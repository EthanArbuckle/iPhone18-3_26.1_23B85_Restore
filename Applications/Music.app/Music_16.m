void sub_1001E6BE0()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1001F4CB8(0, 0, v2, &unk_100EBF998, v8);
  }
}

uint64_t sub_1001E6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_1001E6DCC, v6, v5);
}

uint64_t sub_1001E6DCC()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for SharingController();
  v3 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
  sub_10012B7A8(v1 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource, v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1001E6EB4;

  return sub_1001E9440(v1 + v3, 0, v0 + 16, v2);
}

uint64_t sub_1001E6EB4()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1001E6FE0, v3, v2);
}

uint64_t sub_1001E6FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001E7040(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v26[-v4];
  v6 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = Song.catalogID.getter();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      swift_beginAccess();
      v15 = 0;
      v16 = *(a2 + 24);
      if (v16 != 1)
      {
        v17 = *(a2 + 56);
        v18 = *(a2 + 32);
        v29 = *(a2 + 16);
        v30 = v16;
        v31 = v18;
        v32 = *(a2 + 40);
        v33 = v17;

        v19 = Lyrics.ReportConcernData.dictionaryRepresentation()();

        v15 = sub_100363D38(v19);
      }

      sub_10012B7A8(v10 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource, v26);
      v20 = type metadata accessor for Actions.MetricsReportingContext();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      v21 = swift_allocObject();
      *(v21 + 16) = v13;
      *(v21 + 24) = v14;
      *(v21 + 32) = 2;
      *(v21 + 40) = v15;
      sub_10012B828(v26, v21 + 48);
      Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v13, v14, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v27, v21, v8);
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      type metadata accessor for MainActor();

      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      v25 = v27[1];
      *(v24 + 32) = v27[0];
      *(v24 + 48) = v25;
      *(v24 + 64) = v27[2];
      *(v24 + 80) = v28;
      sub_10086E3AC(0, 0, v5, &unk_100EBF980, v24);
    }

    else
    {
    }
  }
}

uint64_t sub_1001E73E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a1;
  v4[48] = a4;
  type metadata accessor for MainActor();
  v4[49] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v6;
  v4[51] = v5;

  return _swift_task_switch(sub_1001E7480, v6, v5);
}

uint64_t sub_1001E7480()
{
  static Actions.ReportConcern.action(context:)(*(v0 + 384), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  v2 = sub_10010FC20(&qword_1011839B0);
  *v1 = v0;
  v1[1] = sub_1001E7544;
  v3 = *(v0 + 376);

  return Action.execute(checkSupportedStatus:)(v3, 1, v2);
}

uint64_t sub_1001E7544()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = *(v2 + 48);
    *(v2 + 184) = *(v2 + 64);
    *(v2 + 168) = v5;
    *(v2 + 152) = v4;
    *(v2 + 136) = v3;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 112);
    *(v2 + 248) = *(v2 + 128);
    *(v2 + 232) = v8;
    *(v2 + 216) = v7;
    *(v2 + 200) = v6;
    sub_1000095E8(v2 + 136, &qword_1011839B0);
    v9 = *(v2 + 400);
    v10 = *(v2 + 408);
    v11 = sub_1001E7748;
  }

  else
  {
    v12 = *(v2 + 64);
    *(v2 + 288) = *(v2 + 48);
    *(v2 + 304) = v12;
    *(v2 + 256) = v3;
    *(v2 + 272) = v4;
    v13 = *(v2 + 80);
    v14 = *(v2 + 96);
    v15 = *(v2 + 112);
    *(v2 + 368) = *(v2 + 128);
    *(v2 + 336) = v14;
    *(v2 + 352) = v15;
    *(v2 + 320) = v13;
    sub_1000095E8(v2 + 256, &qword_1011839B0);
    v9 = *(v2 + 400);
    v10 = *(v2 + 408);
    v11 = sub_1001E76E4;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1001E76E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E7748()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001E77AC(void *a1, void *a2)
{
  sub_10010FC20(&qword_101181530);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  *(v4 + 56) = type metadata accessor for LyricsSharingActivityViewController.LyricsURLActivityItemProvider();
  *(v4 + 32) = a2;
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &unk_101183F50);
  v7 = Array._bridgeToObjectiveC()().super.isa;
  [a1 _updateActivityItems:isa applicationActivities:v7];
}

uint64_t sub_1001E78A0(double a1)
{
  v2 = v1;
  v57 = type metadata accessor for Logger();
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v10 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v11 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v56 = v11;
  v14(v9, &v2[v11], v12);
  v15 = *(v13 + 56);
  v55 = v12;
  v15(v9, 0, 1, v12);
  MPCReportingLyricsViewEvent.song.setter();
  v16 = &v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
  if (*&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID + 8])
  {

    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v10 setLyricsID:v17];

  [v10 setVisibleDuration:a1];
  v18 = *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
  if (v18 && *(v18 + 32))
  {

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v10 setLanguage:v19];

  [v10 setDisplayType:0];
  v20 = String._bridgeToObjectiveC()();
  [v10 setFeatureName:v20];

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v21 = (*(*qword_101218AC8 + 432))();
  if (v21)
  {
    v22 = v21;
    v23 = [v21 tracklist];

    if (v23)
    {
      v24 = [v23 playingItem];
      if (!v24)
      {

        goto LABEL_28;
      }

      v25 = v24;
      v54 = v6;
      v26 = [v24 metadataObject];
      if (v26)
      {
        v27 = v26;
        v28 = MPModelObject.bestIdentifier(for:)(3, 2u);
        v30 = v29;

        v31 = Song.catalogID.getter();
        if (v30)
        {
          if (!v32)
          {

            goto LABEL_27;
          }

          if (v28 == v31 && v30 == v32)
          {

LABEL_26:
            v34 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
            [v10 setModelPlayEvent:v34];

            goto LABEL_27;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {
            goto LABEL_26;
          }

LABEL_23:

LABEL_27:
          v6 = v54;
          goto LABEL_28;
        }
      }

      else
      {
        Song.catalogID.getter();
      }

      if (!v32)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

LABEL_28:
  v35 = [objc_allocWithZone(MPCLyricsReportingController) init];
  [v35 recordLyricsViewEvent:v10];

  v36 = Logger.lyrics.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v36, v57);
  v37 = v2;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v54 = v6;
    v60 = v41;
    *v40 = 136446722;
    v42 = *(v16 + 1);
    v58 = *v16;
    v59 = v42;

    sub_10010FC20(&qword_1011815E0);
    v43 = String.init<A>(describing:)();
    v45 = sub_1000105AC(v43, v44, &v60);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    v46 = Double.description.getter();
    v48 = sub_1000105AC(v46, v47, &v60);

    *(v40 + 14) = v48;
    *(v40 + 22) = 2082;
    sub_1001EBE64(&unk_101183F40, &type metadata accessor for Song);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = sub_1000105AC(v49, v50, &v60);

    *(v40 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v38, v39, "Recorded Sharing PAF Event with id=%{public}s; timing=%{public}ss; song=%{public}s", v40, 0x20u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v54, v57);
  }

  else
  {

    return (*(v4 + 8))(v6, v57);
  }
}

uint64_t sub_1001E7F54()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101188C20);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v16[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v7, &qword_101188C20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000095E8(v7, &qword_101188C20);
  }

  (*(v9 + 32))(v11, v7, v8);
  Date.timeIntervalSinceNow.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *(v1 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration) = *(v1 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration) - v15;
  (*(v9 + 56))(v5, 1, 1, v8);
  swift_beginAccess();
  sub_1001EBD54(v5, v1 + v12);
  return swift_endAccess();
}

id sub_1001E81F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LyricsSharingActivityViewController()
{
  result = qword_101183EE8;
  if (!qword_101183EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E83E4()
{
  type metadata accessor for Song();
  if (v0 <= 0x3F)
  {
    sub_1001E8510();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001E8510()
{
  if (!qword_101184A60)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101184A60);
    }
  }
}

id sub_1001E858C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController);
  v2 = sub_100338B0C();

  return v2;
}

void sub_1001E85CC(uint64_t isEscapingClosureAtFileLocation, unint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Song.catalogID.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1001EBFF0;
    *(v4 + 24) = v12;
    v31 = sub_1001EC788;
    v32 = v4;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v29 = sub_1002B8A68;
    v30 = &unk_1010A0870;
    v7 = _Block_copy(&aBlock);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  static ApplicationCapabilities.shared.getter(&aBlock);
  sub_100014984(&aBlock);
  if (BYTE2(aBlock))
  {
    (*(v5 + 16))(v7, a2, v4);
    a2 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v14 = *(v5 + 32);
    v5 += 32;
    v14(v13 + a2, v7, v4);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1001EBF54;
    *(v4 + 24) = v13;
    v26 = sub_1001EBE40;
    v27 = v4;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1002B8A68;
    v25 = &unk_1010A07F8;
    v7 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_100009F78(0, &qword_101183F80);
  v15 = static MPMediaLibrary.device.getter();
  v16 = [v15 uniqueIdentifier];

  if (v16)
  {
    (*(v5 + 16))(v7, a2, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, v7, v4);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1001EBEB4;
    *(v19 + 24) = v18;
    v26 = sub_1001EBE50;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1002B8A68;
    v25 = &unk_1010A0780;
    v20 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setLibraryIdentifiersWithDatabaseID:v16 block:v20];

    _Block_release(v20);
    v21 = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }
  }
}

id sub_1001E8AD8(id result, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  v5 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v28 = result;

    v30 = sub_1002D0E10(a2, a3, 10);
    v32 = v31;

    result = v28;
    if ((v32 & 1) == 0)
    {
      v9 = v30;
      return [result setAdamID:v9];
    }

    goto LABEL_63;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v33 = result;
      v4 = _StringObject.sharedUTF8.getter();
      result = v33;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v17 = (v4 + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
LABEL_53:
              LOBYTE(v4) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_69;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v23 = *v4 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v34[0] = a2;
  v34[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 == 45)
    {
      if (!v4)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = v34 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v25 = v34;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_62:
    v35 = v4;
    if ((v4 & 1) == 0)
    {
      return [result setAdamID:v9];
    }

LABEL_63:
    v9 = 0;
    return [result setAdamID:v9];
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v20 = v34 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_1001E8DF4(void *a1)
{
  Song.id.getter();
  v2 = String._bridgeToObjectiveC()();

  [a1 setUniversalCloudLibraryID:v2];
}

uint64_t sub_1001E8E60(void *a1)
{
  result = Song.id.getter();
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v8 = sub_1002D0E10();
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return [a1 setPersistentID:v8];
    }

    goto LABEL_63;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v5 = v29;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
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

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v31 = v5;
      v26 = v5;

      if ((v26 & 1) == 0)
      {
        return [a1 setPersistentID:v8];
      }

LABEL_63:
      v8 = 0;
      return [a1 setPersistentID:v8];
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v30[0] = result;
  v30[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v30;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v30 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v30 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
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

id sub_1001E9180(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  Song.title.getter();
  v4 = String._bridgeToObjectiveC()();

  [v3 setTitle:v4];

  [v3 setArtistUploadedContent:0];
  v5 = [objc_opt_self() emptyIdentifierSet];
  v11[2] = a2;
  v6 = objc_allocWithZone(MPModelLyrics);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001EBEAC;
  *(v7 + 24) = v11;
  aBlock[4] = sub_1001EC784;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010A0708;
  v8 = _Block_copy(aBlock);

  v9 = [v6 initWithIdentifiers:v5 block:v8];

  _Block_release(v8);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [v3 setLyrics:v9];

    return [v3 setHasVideo:0];
  }

  return result;
}

id sub_1001E938C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  [v0 setHasStoreLyrics:Song.hasLyrics.getter() & 1];
  [v0 setHasLibraryLyrics:Song.hasCustomLyrics.getter() & 1];
  [v0 setHasTimeSyncedLyrics:Song.hasTimeSyncedLyrics.getter() & 1];

  return [v0 setText:0];
}

uint64_t sub_1001E9440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[85] = a4;
  v4[84] = a3;
  v4[83] = a2;
  type metadata accessor for Locale();
  v4[86] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[87] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[88] = v5;
  v4[89] = *(v5 - 8);
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[93] = v6;
  v4[94] = *(v6 - 8);
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v7 = type metadata accessor for Playlist();
  v4[105] = v7;
  v4[106] = *(v7 - 8);
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v4[109] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v4[110] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[111] = v9;
  v4[112] = *(v9 + 64);
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[17] = v8;
  v4[18] = &protocol witness table for Song;
  v4[115] = sub_10001C8B8(v4 + 14);
  v11 = *(v10 + 16);
  v4[116] = v11;
  v4[117] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11();
  type metadata accessor for MainActor();
  v4[118] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[119] = v13;
  v4[120] = v12;

  return _swift_task_switch(sub_1001E9834, v13, v12);
}

uint64_t sub_1001E9834()
{
  v89 = v0;
  v1 = swift_allocObject();
  *(v0 + 968) = v1;
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = (v1 + 16);
  sub_100008FE4(v0 + 112, v0 + 192);
  *(v0 + 976) = sub_10010FC20(&unk_1011814E0);
  sub_10010FC20(&unk_101183FF0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 672);
    sub_100059A8C((v0 + 232), v0 + 152);
    v4 = swift_task_alloc();
    *(v4 + 16) = v0 + 152;
    *(v4 + 24) = v3;
    v5 = sub_10012BC18(sub_10012B91C, v4, &off_101099760);

    if (v5 >> 62)
    {
      sub_100009F78(0, &unk_101183F50);

      v6 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &unk_101183F50);
      v6 = v5;
    }

    sub_10012403C(v6);
    sub_10000959C(v0 + 152);
  }

  else
  {
    *(v0 + 264) = 0;
    *(v0 + 248) = 0u;
    *(v0 + 232) = 0u;
    sub_1000095E8(v0 + 232, &unk_1011814F0);
  }

  v7 = *(v0 + 888);
  sub_100008FE4(v0 + 112, v0 + 272);
  v8 = swift_dynamicCast();
  v9 = *(v7 + 56);
  if (v8)
  {
    v10 = *(v0 + 912);
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    v9(v13, 0, 1, v12);
    v14 = *(v11 + 32);
    v14(v10, v13, v12);
    type metadata accessor for LyricsLoader();
    if ((static LyricsLoader.supportsLyrics(for:)(v10) & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1001EBB88();
    if (v15)
    {
      goto LABEL_10;
    }

    v16 = [objc_opt_self() currentTraitCollection];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 6)
    {
      goto LABEL_10;
    }

    v61 = Song.hasLyrics.getter();
    v18 = *(v0 + 912);
    if ((v61 & 1) == 0)
    {
      goto LABEL_11;
    }

    if ((Song.hasTimeSyncedLyrics.getter() & 1) == 0)
    {
LABEL_10:
      v18 = *(v0 + 912);
LABEL_11:
      (*(*(v0 + 888) + 8))(v18, *(v0 + 880));
      goto LABEL_13;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v62 = String.init(localized:table:bundle:locale:comment:)();
    v86 = v63;
    v87 = v62;
    v64 = String._bridgeToObjectiveC()();
    v85 = [objc_opt_self() imageNamed:v64];

    if (qword_10117FC20 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 896);
    v66 = *(v0 + 888);
    v67 = *(v0 + 880);
    v82 = *(v0 + 904);
    v83 = *(v0 + 680);
    v68 = *(v0 + 672);
    v84 = qword_1012193C8;
    (*(v0 + 928))();
    sub_10012B7A8(v68, v0 + 16);
    v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v70 = (v65 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    v14(v71 + v69, v82, v67);
    sub_10012B828(v0 + 16, v71 + v70);
    *(v71 + ((v70 + 103) & 0xFFFFFFFFFFFFFFF8)) = v83;
    v72 = _s8ActivityCMa();
    v73 = objc_allocWithZone(v72);
    v74 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
    *&v73[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
    v75 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
    *&v73[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
    v76 = &v73[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
    *v76 = v87;
    *(v76 + 1) = v86;
    *&v73[v74] = v85;
    *&v73[v75] = v84;
    v77 = &v73[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
    *v77 = sub_10012B884;
    v77[1] = v71;
    *(v0 + 640) = v73;
    *(v0 + 648) = v72;
    v78 = v84;
    objc_msgSendSuper2((v0 + 640), "init");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v79 = *(v0 + 912);
    v80 = *(v0 + 888);
    v81 = *(v0 + 880);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v80 + 8))(v79, v81);
  }

  else
  {
    v19 = *(v0 + 872);
    v9(v19, 1, 1, *(v0 + 880));
    sub_1000095E8(v19, &unk_101183960);
  }

LABEL_13:
  v20 = *(v0 + 848);
  sub_100008FE4(v0 + 112, v0 + 312);
  v21 = swift_dynamicCast();
  v22 = *(v20 + 56);
  if (v21)
  {
    v23 = *(v0 + 864);
    v24 = *(v0 + 848);
    v25 = *(v0 + 840);
    v26 = *(v0 + 832);
    v27 = *(v0 + 816);
    v28 = *(v0 + 712);
    v29 = *(v0 + 704);
    v22(v26, 0, 1, v25);
    v30 = *(v24 + 32);
    *(v0 + 984) = v30;
    *(v0 + 992) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v23, v26, v25);
    Playlist.url.getter();
    v31 = *(v28 + 48);
    *(v0 + 1000) = v31;
    *(v0 + 1008) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v31(v27, 1, v29) == 1)
    {
      sub_1000095E8(*(v0 + 816), &qword_101183A20);
      v32 = swift_task_alloc();
      *(v0 + 1016) = v32;
      *v32 = v0;
      v32[1] = sub_1001EA308;
      v33 = *(v0 + 824);

      return Playlist.publish()(v33);
    }

    v35 = *(v0 + 816);
    (*(*(v0 + 848) + 8))(*(v0 + 864), *(v0 + 840));
    v36 = &qword_101183A20;
  }

  else
  {
    v35 = *(v0 + 832);
    v22(v35, 1, 1, *(v0 + 840));
    v36 = &unk_1011814D0;
  }

  sub_1000095E8(v35, v36);
  sub_100008FE4(v0 + 112, v0 + 392);
  sub_10010FC20(&unk_101184000);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 768);
    v38 = *(v0 + 752);
    v39 = *(v0 + 744);
    v40 = *(v0 + 376);
    v41 = *(v0 + 384);
    sub_10000954C((v0 + 352), v40);
    v42 = (*(v41 + 8))(v40, v41);
    *(v0 + 1024) = v42;
    sub_10000959C(v0 + 352);
    *(v0 + 656) = v42;
    v43 = Logger.actions.unsafeMutableAddressor();
    (*(v38 + 16))(v37, v43, v39);
    sub_100008FE4(v0 + 112, v0 + 512);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 768);
      v47 = *(v0 + 752);
      v48 = *(v0 + 744);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v88[0] = v50;
      *v49 = 136446210;
      sub_100008FE4(v0 + 512, v0 + 552);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      sub_10000959C(v0 + 512);
      v54 = sub_1000105AC(v51, v53, v88);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "Requesting sharing URL and offers for item=%{public}s", v49, 0xCu);
      sub_10000959C(v50);

      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v57 = *(v0 + 768);
      v58 = *(v0 + 752);
      v59 = *(v0 + 744);

      sub_10000959C(v0 + 512);
      (*(v58 + 8))(v57, v59);
    }

    v60 = swift_task_alloc();
    *(v0 + 1040) = v60;
    *v60 = v0;
    v60[1] = sub_1001EB15C;

    return Song.augmentMetadata(_:)(v0 + 656);
  }

  else
  {
    *(v0 + 384) = 0;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    sub_1000095E8(v0 + 352, &unk_101181500);
    v55 = swift_task_alloc();
    *(v0 + 1032) = v55;
    *v55 = v0;
    v55[1] = sub_1001EABA4;
    v56 = *(v0 + 808);

    return Song.shareURL.getter(v56);
  }
}

uint64_t sub_1001EA308()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001EA428, v3, v2);
}

uint64_t sub_1001EA428()
{
  v67 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 824);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    (*(v1 + 8))(*(v0 + 864), v2);
    v4 = &unk_1011814D0;
    v5 = v3;
    goto LABEL_5;
  }

  v6 = *(v0 + 1000);
  v7 = *(v0 + 784);
  v8 = *(v0 + 704);
  (*(v0 + 984))(*(v0 + 856), v3, v2);
  Playlist.url.getter();
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 864);
    v10 = *(v0 + 840);
    v11 = *(v0 + 784);
    v12 = *(*(v0 + 848) + 8);
    v12(*(v0 + 856), v10);
    v12(v9, v10);
    v4 = &qword_101183A20;
    v5 = v11;
LABEL_5:
    sub_1000095E8(v5, v4);
    sub_100008FE4(v0 + 112, v0 + 392);
    sub_10010FC20(&unk_101184000);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 768);
      v14 = *(v0 + 752);
      v15 = *(v0 + 744);
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      sub_10000954C((v0 + 352), v16);
      v18 = (*(v17 + 8))(v16, v17);
      *(v0 + 1024) = v18;
      sub_10000959C(v0 + 352);
      *(v0 + 656) = v18;
      v19 = Logger.actions.unsafeMutableAddressor();
      (*(v14 + 16))(v13, v19, v15);
      sub_100008FE4(v0 + 112, v0 + 512);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 768);
        v23 = *(v0 + 752);
        v24 = *(v0 + 744);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v66 = v26;
        *v25 = 136446210;
        sub_100008FE4(v0 + 512, v0 + 552);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        sub_10000959C(v0 + 512);
        v30 = sub_1000105AC(v27, v29, &v66);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "Requesting sharing URL and offers for item=%{public}s", v25, 0xCu);
        sub_10000959C(v26);

        (*(v23 + 8))(v22, v24);
      }

      else
      {
        v48 = *(v0 + 768);
        v49 = *(v0 + 752);
        v50 = *(v0 + 744);

        sub_10000959C(v0 + 512);
        (*(v49 + 8))(v48, v50);
      }

      v51 = swift_task_alloc();
      *(v0 + 1040) = v51;
      *v51 = v0;
      v51[1] = sub_1001EB15C;

      return Song.augmentMetadata(_:)(v0 + 656);
    }

    else
    {
      *(v0 + 384) = 0;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      sub_1000095E8(v0 + 352, &unk_101181500);
      v31 = swift_task_alloc();
      *(v0 + 1032) = v31;
      *v31 = v0;
      v31[1] = sub_1001EABA4;
      v32 = *(v0 + 808);

      return Song.shareURL.getter(v32);
    }
  }

  v34 = *(v0 + 784);
  v35 = *(v0 + 720);
  v36 = *(v0 + 712);
  v37 = *(v0 + 704);

  (*(v36 + 32))(v35, v34, v37);
  v38 = sub_100562380();
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  [v38 setOriginalURL:v40];

  v42 = type metadata accessor for ShareActivityItemProvider();
  v43 = objc_allocWithZone(v42);
  v44 = v38;
  v45 = [v44 originalURL];
  if (v45)
  {
    v46 = v45;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v64 = *(v0 + 856);
  v65 = *(v0 + 864);
  v52 = *(v0 + 848);
  v53 = *(v0 + 840);
  v54 = *(v0 + 776);
  v62 = *(v0 + 968);
  v63 = *(v0 + 720);
  v55 = *(v0 + 712);
  v56 = *(v0 + 704);
  v61 = *(v0 + 672);
  v57 = *(v0 + 664);
  (*(v55 + 56))(v54, v47, 1, v56);
  sub_10003D17C(v54, &v43[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20);
  *&v43[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v44;
  *(v0 + 624) = v43;
  *(v0 + 632) = v42;
  v58 = objc_msgSendSuper2((v0 + 624), "init");
  sub_10012AA30(v58, v57, v62, v61);

  (*(v55 + 8))(v63, v56);
  v59 = *(v52 + 8);
  v59(v64, v53);
  v59(v65, v53);

  sub_10000959C(v0 + 112);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1001EABA4()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001EACC4, v3, v2);
}

uint64_t sub_1001EACC4()
{
  v39 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 920);
    sub_1000095E8(*(v0 + 808), &qword_101183A20);
    sub_1001EB5D4(v4);
  }

  else
  {
    v5 = *(v0 + 760);
    v6 = *(v0 + 752);
    v7 = *(v0 + 744);
    (*(*(v0 + 712) + 32))(*(v0 + 736), *(v0 + 808), *(v0 + 704));
    v8 = Logger.actions.unsafeMutableAddressor();
    (*(v6 + 16))(v5, v8, v7);
    sub_100008FE4(v0 + 112, v0 + 432);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 760);
      v12 = *(v0 + 752);
      v13 = *(v0 + 744);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136446210;
      sub_100008FE4(v0 + 432, v0 + 472);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_10000959C(v0 + 432);
      v19 = sub_1000105AC(v16, v18, &v38);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Requesting sharing URL for item=%{public}s", v14, 0xCu);
      sub_10000959C(v15);

      (*(v12 + 8))(v11, v13);
    }

    else
    {
      v20 = *(v0 + 760);
      v21 = *(v0 + 752);
      v22 = *(v0 + 744);

      sub_10000959C(v0 + 432);
      (*(v21 + 8))(v20, v22);
    }

    v23 = *(v0 + 968);
    v24 = *(v0 + 728);
    v25 = *(v0 + 712);
    v26 = *(v0 + 704);
    v36 = *(v0 + 672);
    v37 = *(v0 + 736);
    v35 = *(v0 + 664);
    v27 = *(v25 + 16);
    v27(v24);
    v28 = type metadata accessor for ShareActivityItemProvider();
    v29 = objc_allocWithZone(v28);
    v30 = OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url;
    (v27)(&v29[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], v24, v26);
    (*(v25 + 56))(&v29[v30], 0, 1, v26);
    *&v29[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = 0;
    *(v0 + 592) = v29;
    *(v0 + 600) = v28;
    v31 = objc_msgSendSuper2((v0 + 592), "init");
    v32 = *(v25 + 8);
    v32(v24, v26);
    sub_10012AA30(v31, v35, v23, v36);

    v32(v37, v26);
  }

  sub_10000959C(v0 + 112);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1001EB15C()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001EB27C, v3, v2);
}

uint64_t sub_1001EB27C()
{
  receiver = v0[64].receiver;

  v2 = [receiver originalURL];
  if (v2)
  {
    v3 = v0[64].receiver;
    v4 = v0[50].receiver;
    super_class = v0[44].super_class;
    v6 = v0[44].receiver;
    v7 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 1;
    v23 = *(super_class + 7);
    v23(v4, 0, 1, v6);
    sub_1000095E8(v4, &qword_101183A20);
    v9 = type metadata accessor for ShareActivityItemProvider();
    v10 = objc_allocWithZone(v9);
    v11 = [v3 originalURL];
    if (v11)
    {
      v12 = v11;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    v13 = v0[64].receiver;
    v14 = v0[60].super_class;
    v15 = v0[49].super_class;
    v16 = v0[42].receiver;
    v17 = v0[41].super_class;
    v23(v15, v8, 1, v0[44].receiver);
    sub_10003D17C(v15, &v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20);
    *&v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v13;
    v0[38].receiver = v10;
    v0[38].super_class = v9;
    v18 = objc_msgSendSuper2(v0 + 38, "init");
    sub_10012AA30(v18, v17, v14, v16);
  }

  else
  {
    v19 = v0[57].super_class;
    v20 = v0[50].receiver;
    (*(v0[44].super_class + 7))(v20, 1, 1, v0[44].receiver);
    sub_1000095E8(v20, &qword_101183A20);
    sub_1001EB5D4(v19);

    v18 = v0[64].receiver;
  }

  sub_10000959C(&v0[7]);

  v21 = v0->super_class;

  return v21();
}

uint64_t sub_1001EB5D4(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Song();
  v33[3] = v10;
  v33[4] = &protocol witness table for Song;
  v11 = sub_10001C8B8(v33);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  v12 = Logger.actions.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v12, v6);
  sub_100008FE4(v33, v32);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v5;
    v31 = v28;
    *v15 = 136446210;
    sub_100008FE4(v32, v30);
    sub_10010FC20(&unk_1011814E0);
    v16 = String.init<A>(describing:)();
    v27 = v6;
    v17 = v16;
    v19 = v18;
    sub_10000959C(v32);
    v20 = sub_1000105AC(v17, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "No sharing url for item=%{public}s", v15, 0xCu);
    sub_10000959C(v28);

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    sub_10000959C(v32);
    (*(v7 + 8))(v9, v6);
  }

  Song.failureMessage.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:v21 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v23 = String._bridgeToObjectiveC()();

  v24 = [objc_opt_self() actionWithTitle:v23 style:1 handler:0];

  [v22 addAction:v24];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v22, 1, 1, 0, 0);

  return sub_10000959C(v33);
}

uint64_t sub_1001EBA0C(void *a1)
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for LyricsSharingActivityViewController.LyricsURLActivityItemProvider();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewControllerP33_84E0FBA0540C9AC5FB893F254C8A85DC29LyricsURLActivityItemProvider_snippetComponents] = a1;
  v7 = a1;
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    (*(v9 + 8))(v4, v8);
    v15.receiver = v6;
    v15.super_class = v5;
    v14 = objc_msgSendSuper2(&v15, "initWithPlaceholderItem:", v13);

    return v14;
  }

  return result;
}

uint64_t sub_1001EBB88()
{
  BagProvider.shared.unsafeMutableAddressor();

  v0 = BagProvider.bag.getter();

  if (!v0)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_12;
  }

  ICURLBag.subscript.getter(ICURLBagKeyMusicSubscription, &v5);

  if (!*(&v6 + 1))
  {
LABEL_12:
    sub_1000095E8(&v5, &unk_101183F30);
    return 0;
  }

  sub_10010FC20(&qword_101197BD0);
  if ((swift_dynamicCast() & 1) == 0 || !v4)
  {
    return 0;
  }

  if (!*(v4 + 16) || (v1 = sub_100019C10(0xD00000000000001ALL, 0x8000000100E409A0), (v2 & 1) == 0))
  {

    return 0;
  }

  sub_10000DD18(*(v4 + 56) + 32 * v1, &v5);

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EBCE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EBD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101188C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EBDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EBE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001EBECC()
{
  v1 = type metadata accessor for Song();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001EBF6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001EBFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1001E73E8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001EC0A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001E6D34(a1, v4, v5, v6);
}

uint64_t sub_1001EC164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1001E3B94(a1, v4, v5, v6);
}

uint64_t sub_1001EC218(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10011895C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001EC250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EC2D4(void *a1)
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for MetricsEvent.Click(0);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 activityTitle];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v18(v7, 1, 1, v17);
  v18(v4, 1, 1, v17);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v14, v16, 2, 48, v7, 0, 0, 4, v11, 0, 0, 65280, 0, 0, 0, 0, v4, 0, 1, 2, 0, 0, 0);
  v19 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v20 = sub_10053771C();
  v22 = v21;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v23 = qword_101218AD0;
  v24 = GroupActivitiesManager.hasJoined.getter();
  v25 = GroupActivitiesManager.participantsCount.getter();
  v26 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v19) + 0xB8))(v11, v20, v22, v24 & 1, v25, *(v23 + v26));

  return sub_1001EC5BC(v11, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_1001EC5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001EC61C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1001E2138(a1, v4, v5, v7, v6);
}

uint64_t sub_1001EC6DC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t _s14ViewControllerCMa()
{
  result = qword_101184170;
  if (!qword_101184170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001EC7D8()
{
  sub_10005BC8C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_1001EC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v92 = a5;
  v93 = a6;
  v74 = a4;
  v70 = a3;
  v91 = a2;
  v86 = sub_10010FC20(&unk_101182130);
  __chkstk_darwin(v86);
  v84 = &v66 - v9;
  v83 = sub_10010FC20(&qword_101184210);
  __chkstk_darwin(v83);
  v82 = &v66 - v10;
  v81 = sub_10010FC20(&qword_101184218);
  __chkstk_darwin(v81);
  v80 = &v66 - v11;
  v12 = sub_10010FC20(&qword_101184220);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v85 = &v66 - v13;
  v77 = sub_10010FC20(&qword_101184228);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v66 - v14;
  v15 = _s8MetadataO4ViewVMa(0);
  __chkstk_darwin(v15 - 8);
  v73 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_10118F670);
  v18 = __chkstk_darwin(v17 - 8);
  v72 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v66 - v20;
  v21 = sub_10010FC20(&qword_101183AD0);
  __chkstk_darwin(v21 - 8);
  v68 = &v66 - v22;
  v23 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v23 - 8);
  v69 = &v66 - v24;
  v25 = sub_10010FC20(&qword_101184230);
  v26 = __chkstk_darwin(v25 - 8);
  v90 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v66 - v28;
  v30 = (v6 + qword_101184130);
  *v30 = 0;
  v30[1] = 0;
  v31 = qword_101184140;
  _s8MetadataO5ModelCMa(0);
  swift_allocObject();
  *(v6 + v31) = sub_1004F627C();
  *(v6 + qword_101184148) = 0;
  v32 = qword_101184150;
  v95 = 0;
  sub_10010FC20(&qword_101184238);
  State.init(wrappedValue:)();
  *(v7 + v32) = v94;
  v67 = qword_101184158;
  *(v7 + qword_101184158) = 1;
  *(v7 + qword_101184160) = 0;
  *(v7 + qword_101184168) = 0;
  v33 = qword_101184138;
  v34 = sub_10010FC20(&unk_1011841D0);
  v78 = *(v34 - 8);
  v35 = *(v78 + 16);
  v35(v7 + v33, a1, v34);
  v36 = *v30;
  v37 = v92;
  v38 = v93;
  *v30 = v92;
  v30[1] = v38;
  sub_100030444(v37);
  sub_100020438(v36);
  v89 = a1;
  v79 = v34;
  v35(v29, a1, v34);
  v39 = type metadata accessor for PlaylistCovers.Source();
  swift_storeEnumTagMultiPayload();
  (*(*(v39 - 8) + 56))(v29, 0, 1, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v29, v90, &qword_101184230);

  static Published.subscript.setter();
  sub_1000095E8(v29, &qword_101184230);
  v40 = sub_10010E580(&off_1010992B0);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v94 = v40;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v94) = 1;

  static Published.subscript.setter();
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v42 = result;
    v43 = [result isCloudLibraryEnabled];

    v44 = v91;
    if (v43)
    {
      if (qword_10117F278 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v45 = v68;
      static Published.subscript.getter();

      v46 = type metadata accessor for UserProfile();
      v47 = *(v46 - 8);
      v48 = (*(v47 + 48))(v45, 1, v46);
      v49 = v69;
      if (v48 == 1)
      {
        sub_1000095E8(v45, &qword_101183AD0);
        v50 = type metadata accessor for SocialProfile();
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v51 = 0;
      }

      else
      {
        UserProfile.socialProfile.getter();
        (*(v47 + 8))(v45, v46);
        v52 = type metadata accessor for SocialProfile();
        v51 = (*(*(v52 - 8) + 48))(v49, 1, v52) != 1;
      }

      sub_1000095E8(v49, &qword_101186E00);
      *(v7 + v67) = v51;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v94) = v51;

      static Published.subscript.setter();
    }

    v53 = v74;
    if (v74)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v94 = v70;
      *(&v94 + 1) = v53;

      static Published.subscript.setter();
    }

    v54 = v44;
    v55 = v71;
    sub_1000089F8(v54, v71, &unk_10118F670);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v55, v72, &unk_10118F670);

    static Published.subscript.setter();
    sub_1000095E8(v55, &unk_10118F670);

    sub_1004F43FC(v73);
    v56 = UIHostingController.init(rootView:)();
    v57 = qword_10117F278;
    v58 = v56;
    if (v57 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10010FC20(&qword_101184240);
    v59 = v75;
    Published.projectedValue.getter();
    swift_endAccess();
    *(swift_allocObject() + 16) = v58;
    sub_100020674(&qword_101184248, &qword_101184228);
    v60 = v58;
    v61 = v77;
    v62 = Publisher<>.sink(receiveValue:)();

    (*(v76 + 8))(v59, v61);
    v94 = *&v60[qword_101184150];
    v95 = v62;
    sub_10010FC20(&qword_101184250);
    State.wrappedValue.setter();
    [v60 setModalInPresentation:1];
    swift_beginAccess();

    sub_10010FC20(&qword_101184258);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_beginAccess();

    sub_10010FC20(&unk_101184260);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_beginAccess();

    sub_10010FC20(&unk_101189E60);
    Published.projectedValue.getter();
    swift_endAccess();

    sub_100020674(&qword_101184270, &qword_101184218);
    sub_100020674(&qword_101184278, &qword_101184210);
    sub_100020674(&qword_101184280, &unk_101182130);
    v63 = v85;
    Publishers.CombineLatest3.init(_:_:_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100020674(&qword_101184288, &qword_101184220);
    v64 = v88;
    v65 = Publisher<>.sink(receiveValue:)();

    sub_100020438(v92);
    sub_1000095E8(v91, &unk_10118F670);
    (*(v78 + 8))(v89, v79);
    (*(v87 + 8))(v63, v64);
    *&v60[qword_101184148] = v65;

    return v60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001ED788(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1001EFD48();
    v8 = String.trim()();

    v9 = (v8._object >> 56) & 0xF;
    if ((v8._object & 0x2000000000000000) == 0)
    {
      v9 = v8._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      LOBYTE(v9) = v11 ^ 1;
    }

    [(objc_class *)v7 setEnabled:v9 & 1];

    v10 = v6;
    [v10 setModalInPresentation:{sub_1001EE6CC(v1, v2, v3, v4) & 1}];
  }
}

void sub_1001ED914()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v10.receiver = v0;
  v10.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v3 = [v0 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v3 setTitle:v4];

  v5 = [v0 navigationItem];
  [v5 setLargeTitleDisplayMode:2];

  v6 = [v0 navigationItem];
  v7 = sub_1001EFBD0();
  [v6 setLeftBarButtonItem:v7];

  v8 = [v0 navigationItem];
  v9 = sub_1001EFD48();
  [v8 setRightBarButtonItem:v9];
}

void sub_1001EDB2C(void *a1)
{
  v1 = a1;
  sub_1001ED914();
}

void sub_1001EDB74()
{
  v14.receiver = v0;
  v14.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_1001EFA54(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001EDCAC(void *a1)
{
  v1 = a1;
  sub_1001EDB74();
}

void sub_1001EDCF4(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_1001EFA54(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1001EDD94(char a1)
{
  v3 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = _s14ViewControllerCMa();
  v19.receiver = v1;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, "viewIsAppearing:", a1 & 1);
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 window];

  if (v12)
  {

    v13 = [v12 traitCollection];
    [v13 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v8, v5, &unk_101184290);
    static Published.subscript.setter();

    sub_1000095E8(v8, &unk_101184290);
  }

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 window];

  if (v16)
  {
    sub_10010FC20(&unk_101182D80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100EBC6B0;
    *(v17 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v17 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(swift_allocObject() + 16) = v1;
    sub_100009F78(0, &unk_1011842A0);
    v18 = v1;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }
}

void sub_1001EE06C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v15 - v9;
  v11 = [a3 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (v13)
    {

      v14 = [v13 traitCollection];
      [v14 horizontalSizeClass];

      UserInterfaceSizeClass.init(_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000089F8(v10, v6, &unk_101184290);
      static Published.subscript.setter();

      sub_1000095E8(v10, &unk_101184290);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001EE218(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001EDD94(a3);
}

uint64_t sub_1001EE26C(char a1)
{
  v3 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s14ViewControllerCMa();
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.playlistCreation.unsafeMutableAddressor();
  sub_1001F3D44(v8, v5, type metadata accessor for MetricsEvent.Page);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v5, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_1001F4810(v5, type metadata accessor for MetricsEvent.Page);
}

void sub_1001EE42C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001EE26C(a3);
}

uint64_t sub_1001EE480()
{
  if (sub_1001F3DB4())
  {
    static ApplicationCapabilities.shared.getter(v9);
    v1 = v10;

    sub_100014984(v9);
    v2 = sub_10048BBDC(3, v1);
  }

  else
  {
    v2 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v3 = sub_100031064(3, v8[0]) & 1;

  if ((v2 & 1) != v3)
  {
    if (v2)
    {
      *(v0 + qword_101184158) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v8[0]) = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();

      v5 = static Published.subscript.modify();
      sub_1003B37A0(&v7, 3);
      v5(v8, 0);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v6 = static Published.subscript.modify();
      sub_100195800(3u);
      v6(v8, 0);
    }
  }

  return result;
}

uint64_t sub_1001EE6CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_10010FC20(&unk_1011841D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if (!a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();
  }

  v13 = String.trim()();

  if ((v13._object & 0x2000000000000000) != 0)
  {
    v14 = (v13._object >> 56) & 0xF;
  }

  else
  {
    v14 = v13._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v21)
    {
      v15 = 0;
      goto LABEL_10;
    }
  }

  v15 = 1;
LABEL_10:
  (*(v10 + 16))(v12, v5 + qword_101184138, v9);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v16 = dispatch thunk of Collection.distance(from:to:)();
  (*(v10 + 8))(v12, v9);
  v17 = 1;
  if (!v14 && (v15 & 1) == 0 && v16 <= 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v18 = sub_100031064(3, v21);

    if (v18)
    {
      if (a4 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        a4 = v21;
      }

      v17 = a4 ^ *(v5 + qword_101184158);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17 & 1;
}

void sub_1001EEA80()
{
  v1 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_1001EE6CC(0, 0, 0, 2) & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v6[15] & 1) == 0))
  {
    v5 = sub_1001EEC0C();
    [v0 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v4 = *&v0[qword_101184130];
    if (v4)
    {
      swift_storeEnumTagMultiPayload();

      v4(v3);
      sub_100020438(v4);
      sub_1001F4810(v3, type metadata accessor for PlaylistCreation.FlowResult);
    }
  }
}

uint64_t sub_1001EEC0C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:0];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001F4978;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010A0C78;
  v8 = _Block_copy(aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
  _Block_release(v8);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 actionWithTitle:v11 style:1 handler:0];

  [v5 addAction:v10];
  [v5 addAction:v12];
  v13 = [v0 navigationItem];
  v14 = [v13 leadingItemGroups];

  sub_100009F78(0, &unk_1011842F0);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_1007E953C(0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = [v17 barButtonItems];

  sub_100009F78(0, &qword_101181580);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v20 = sub_1007E90E8(0, v15);
    goto LABEL_11;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v15 + 32);
LABEL_11:
    v21 = v20;
LABEL_17:

    v22 = [v5 popoverPresentationController];
    [v22 setBarButtonItem:v21];

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1001EF1BC()
{
  v0 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_101184130);
    v5 = Strong;
    sub_100030444(v4);

    if (v4)
    {
      swift_storeEnumTagMultiPayload();
      v4(v2);
      sub_100020438(v4);
      sub_1001F4810(v2, type metadata accessor for PlaylistCreation.FlowResult);
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1001EF30C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v7];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001F4878;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010A0C28;
  v10 = _Block_copy(aBlock);

  v11 = [v6 actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  [v4 addAction:v11];
  [v4 setPreferredAction:v11];

  return v4;
}

uint64_t sub_1001EF704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1001EF79C, v6, v5);
}

uint64_t sub_1001EF79C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1001EF8A0;

    return sub_1001F0914();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1001EF8A0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1001EF9E0, v4, v3);
}

uint64_t sub_1001EF9E0()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001EFA54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    UIEdgeInsets.vertical.getter();
    [v3 additionalSafeAreaInsets];
    UIEdgeInsets.vertical.getter();
    v9 = static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(0, a1, a2, a3 & 1, 0);
    v11 = v10;
    [v3 preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [v3 setPreferredContentSize:{v9, v11}];
      v15 = [v3 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 setPreferredContentSize:{v9, v11}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

objc_class *sub_1001EFBD0()
{
  v1 = qword_101184160;
  v2 = *(v0 + qword_101184160);
  if (v2)
  {
    v3 = *(v0 + qword_101184160);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    sub_100009F78(0, &qword_1011839A0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9.is_nil = 0;
    v5.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1001EFCF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001EEA80();
  }
}

objc_class *sub_1001EFD48()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = qword_101184168;
  v5 = *&v0[qword_101184168];
  if (v5)
  {
    v6 = *&v0[qword_101184168];
  }

  else
  {
    sub_100009F78(0, &qword_1011839A0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v8 = [v1 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    sub_100009F78(0, &qword_101181580);
    if (v9 == 6)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v11 = String.init(localized:table:bundle:locale:comment:)();
      v13 = v12;
      v14 = v7;
      v15.value._countAndFlagsBits = v11;
      v15.value._object = v13;
      v21.value.super.isa = 0;
      v21.is_nil = v7;
      v22.value.super.super.isa = 0;
      v16.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v15, v21, v22, v23).super.super.isa;
      [(objc_class *)v16.super.super.isa setStyle:2];
    }

    else
    {
      v20.value.super.super.isa = v7;
      v20.is_nil = 0;
      v16.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v20, v10).super.super.isa;
    }

    v17 = *&v1[v4];
    *&v1[v4] = v16;
    v6 = v16.super.super.isa;

    v5 = 0;
  }

  v18 = v5;
  return v6;
}

uint64_t sub_1001EFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a2;
  a5(0, 0, v10, a4, v13);
}

uint64_t sub_1001F00F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10010FC20(&unk_1011838F0);
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  v4[10] = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_1001F0224, v6, v5);
}

uint64_t sub_1001F0224()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_1001F054C;

    return sub_1001F0914();
  }

  else
  {

    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = v7;
    v10 = MetricsEvent.Page.playlistCreation.unsafeMutableAddressor();
    sub_1001F3D44(v10, v6, type metadata accessor for MetricsEvent.Page);
    v11 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(1701736292, 0xE400000000000000, 5, 11, v4, 0, 0, 12, v5, 0, 0, 0xFF00u, v6, 0);
    v12 = sub_10053771C();
    v14 = v13;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v15 = v0[11];
    v16 = qword_101218AD0;
    v17 = GroupActivitiesManager.hasJoined.getter();
    v18 = GroupActivitiesManager.participantsCount.getter();
    v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v9) + 0xB8))(v15, v12, v14, v17 & 1, v18, *(v16 + v19));

    sub_1001F4810(v15, type metadata accessor for MetricsEvent.Click);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1001F054C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_1001F068C, v4, v3);
}

uint64_t sub_1001F068C()
{

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = v4;
  v7 = MetricsEvent.Page.playlistCreation.unsafeMutableAddressor();
  sub_1001F3D44(v7, v3, type metadata accessor for MetricsEvent.Page);
  v8 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(1701736292, 0xE400000000000000, 5, 11, v1, 0, 0, 12, v2, 0, 0, 0xFF00u, v3, 0);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = v0[11];
  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v6) + 0xB8))(v12, v9, v11, v14 & 1, v15, *(v13 + v16));

  sub_1001F4810(v12, type metadata accessor for MetricsEvent.Click);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001F0914()
{
  v1[144] = v0;
  sub_10010FC20(&unk_101181520);
  v1[145] = swift_task_alloc();
  v2 = *(sub_10010FC20(&unk_10118F670) - 8);
  v1[146] = v2;
  v1[147] = *(v2 + 64);
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v3 = sub_10010FC20(&unk_1011841D0);
  v1[150] = v3;
  v4 = *(v3 - 8);
  v1[151] = v4;
  v1[152] = *(v4 + 64);
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[155] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[156] = v6;
  v1[157] = v5;

  return _swift_task_switch(sub_1001F0ADC, v6, v5);
}

uint64_t sub_1001F0ADC()
{
  v1 = *(v0 + 1152);
  v2 = qword_101184140;
  *(v0 + 1264) = qword_101184140;
  *(v0 + 1272) = *&v1[v2];
  *(v0 + 1048) = 0;
  *(v0 + 1016) = 0u;
  *(v0 + 1032) = 0u;
  *(v0 + 1056) = xmmword_100EBCEF0;

  PresentationSource.init(viewController:position:)(v1, v0 + 1016, v0 + 920);
  v3 = swift_task_alloc();
  *(v0 + 1280) = v3;
  *v3 = v0;
  v3[1] = sub_1001F0BCC;

  return sub_1004F475C(v0 + 920, 1);
}

uint64_t sub_1001F0BCC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1290) = a1;

  sub_10012BA6C(v3 + 920);
  v4 = *(v2 + 1256);
  v5 = *(v2 + 1248);

  return _swift_task_switch(sub_1001F0D20, v5, v4);
}

uint64_t sub_1001F0D20()
{
  v1 = *(v0 + 1290);

  if (v1 == 1)
  {
    v80 = *(v0 + 1232);
    v2 = *(v0 + 1208);
    v3 = *(v0 + 1200);
    v4 = *(v0 + 1152);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1288) = 1;

    static Published.subscript.setter();
    v5 = sub_1001EFD48();
    [(objc_class *)v5 setEnabled:0];

    v6 = sub_1001EFBD0();
    [(objc_class *)v6 setEnabled:0];

    v78 = *(v2 + 16);
    v78(v80, v4 + qword_101184138, v3);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v79 = *(v0 + 1136);
    v81 = *(v0 + 1128);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v77 = *(v0 + 1289);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v7 = *(v0 + 520);
    v8 = *(v0 + 536);
    *(v0 + 384) = v7;
    *(v0 + 400) = v8;
    v9 = *(v0 + 552);
    *(v0 + 416) = v9;
    v10 = *(v0 + 456);
    v11 = *(v0 + 472);
    *(v0 + 320) = v10;
    *(v0 + 336) = v11;
    v13 = *(v0 + 488);
    v12 = *(v0 + 504);
    *(v0 + 352) = v13;
    *(v0 + 368) = v12;
    v15 = *(v0 + 424);
    v14 = *(v0 + 440);
    *(v0 + 288) = v15;
    *(v0 + 304) = v14;
    *(v0 + 248) = v7;
    *(v0 + 264) = v8;
    *(v0 + 280) = v9;
    *(v0 + 184) = v10;
    *(v0 + 200) = v11;
    *(v0 + 216) = v13;
    *(v0 + 232) = v12;
    *(v0 + 152) = v15;
    *(v0 + 168) = v14;
    if (sub_1000D8FCC((v0 + 152)) == 1 || (v16 = *(v0 + 264), *(v0 + 112) = *(v0 + 248), *(v0 + 128) = v16, *(v0 + 144) = *(v0 + 280), v17 = *(v0 + 200), *(v0 + 48) = *(v0 + 184), *(v0 + 64) = v17, v18 = *(v0 + 232), *(v0 + 80) = *(v0 + 216), *(v0 + 96) = v18, v19 = *(v0 + 168), *(v0 + 16) = *(v0 + 152), *(v0 + 32) = v19, PlaylistCovers.CarouselItem.cover.getter((v0 + 688)), v20 = *(v0 + 768), *(v0 + 624) = *(v0 + 752), *(v0 + 640) = v20, v21 = *(v0 + 800), *(v0 + 656) = *(v0 + 784), *(v0 + 672) = v21, v22 = *(v0 + 704), *(v0 + 560) = *(v0 + 688), *(v0 + 576) = v22, v23 = *(v0 + 736), *(v0 + 592) = *(v0 + 720), *(v0 + 608) = v23, sub_1000D8FA0((v0 + 560)) == 1) || (v24 = *(v0 + 584), v25 = *(v0 + 592), v26 = *(v0 + 600), v27 = *(v0 + 608), v28 = *(v0 + 616), v29 = *(v0 + 624), v30 = *(v0 + 632), sub_1001F43A0(v24, v25, v26, v27, v28, v29, v30), sub_1000095E8(v0 + 688, &unk_1011842B8), !v25))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v74 = *(v0 + 1144);
      v45 = v74;
      v76 = 0;
    }

    else
    {
      *(v0 + 1072) = v24;
      *(v0 + 1080) = v25;
      *(v0 + 1088) = v26;
      *(v0 + 1096) = v27;
      *(v0 + 1104) = v28;
      *(v0 + 1112) = v29;
      *(v0 + 1120) = v30;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v36 = v30;
      PlaylistCovers.Recipe.init(from:)((v0 + 1072), (v0 + 816));
      v37 = PlaylistCovers.Recipe.rawJSONRepresentation()();
      if (!v38)
      {
        object = v37._object;
        log = v37._countAndFlagsBits;
        sub_1001F4410(v0 + 816);
        v64 = objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkToken());

        v76 = PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(v0 + 1072, v81, v79);
        v65 = v76;
        v74 = 0;
        goto LABEL_12;
      }

      v75 = v24;
      sub_1001F4410(v0 + 816);
      if (qword_10117F6E8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000060E4(v39, qword_101218C50);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v73 = v30;
        v42 = swift_slowAlloc();
        loga = v40;
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, loga, v41, "Failed to encode recipe with error=%{public}@", v42, 0xCu);
        sub_1000095E8(v43, &unk_101183D70);

        sub_1001F4464(v75, v25, v26, v27, v28, v29, v73);
      }

      else
      {
        sub_1001F4464(v75, v25, v26, v27, v28, v29, v30);
      }

      v74 = 0;
      v76 = 0;
    }

    object = 0;
    log = 0;
LABEL_12:
    v46 = *(v0 + 1232);
    v47 = *(v0 + 1224);
    v67 = v47;
    v68 = *(v0 + 1216);
    v48 = *(v0 + 1208);
    v49 = *(v0 + 1200);
    v66 = v49;
    v50 = *(v0 + 1192);
    v51 = *(v0 + 1184);
    v52 = *(v0 + 1176);
    v53 = *(v0 + 1168);
    v54 = *(v0 + 1160);
    v69 = *(v0 + 1152);
    static TaskPriority.userInitiated.getter();
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v78(v47, v46, v49);
    v56 = v51;
    sub_1000089F8(v50, v51, &unk_10118F670);
    v57 = (*(v48 + 80) + 73) & ~*(v48 + 80);
    v58 = (v68 + *(v53 + 80) + v57) & ~*(v53 + 80);
    v59 = (v52 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = v81;
    *(v60 + 40) = v79;
    *(v60 + 48) = v74;
    *(v60 + 56) = log;
    *(v60 + 64) = object;
    *(v60 + 72) = v77;
    (*(v48 + 32))(v60 + v57, v67, v66);
    sub_1001F4144(v56, v60 + v58);
    *(v60 + v59) = v69;
    *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
    v61 = v69;
    sub_10035EB10(0, 0, v54, &unk_100EBFE28, v60);

    sub_1000095E8(v0 + 288, &qword_1011842B0);
    sub_1000095E8(v54, &unk_101181520);
    sub_1000095E8(v50, &unk_10118F670);
    (*(v48 + 8))(v46, v66);
  }

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1001F15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v19;
  *(v8 + 112) = v20;
  *(v8 + 88) = v18;
  *(v8 + 336) = v17;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  sub_10010FC20(&unk_101181520);
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011842C8);
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Playlist();
  *(v8 + 152) = v10;
  v11 = *(v10 - 8);
  *(v8 + 160) = v11;
  *(v8 + 168) = *(v11 + 64);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_10010FC20(&unk_1011841D0);
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  *(v8 + 216) = *(v13 + 64);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  *(v8 + 248) = swift_task_alloc();
  sub_10010FC20(&unk_10118C170);
  *(v8 + 256) = swift_task_alloc();
  v14 = sub_10010FC20(&qword_1011842E0);
  *(v8 + 264) = v14;
  *(v8 + 272) = *(v14 - 8);
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1001F18C0, 0, 0);
}

uint64_t sub_1001F18C0()
{
  v34 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 88);
  v6 = [*(v0 + 64) CGImage];
  v7 = type metadata accessor for Curator();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = *(v3 + 16);
  *(v0 + 288) = v8;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9 = v5;
  v10 = v8;
  v8(v2, v9, v4);
  (*(v3 + 56))(v2, 0, 1, v4);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:coverArtworkRecipe:isPublic:isVisible:curator:tracks:folder:)();

  sub_1000095E8(v2, &unk_1011842D0);
  sub_1000095E8(v1, &unk_10118C170);
  sub_100009F78(0, &qword_101182960);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OS_dispatch_queue.asyncAfter(_:block:)(sub_1001F44D4, v12);

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 240);
  v14 = *(v0 + 200);
  v15 = *(v0 + 88);
  v16 = type metadata accessor for Logger();
  *(v0 + 304) = sub_1000060E4(v16, qword_101218C50);
  v10(v13, v15, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 240);
  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  if (v19)
  {
    v23 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v23 = 136446210;
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    *(v0 + 40) = dispatch thunk of Collection.distance(from:to:)();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v22 + 8);
    v27(v20, v21);
    v28 = sub_1000105AC(v24, v26, &v33);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending playlist creation request with %{public}s song(s)", v23, 0xCu);
    sub_10000959C(v32);
  }

  else
  {

    v27 = *(v22 + 8);
    v27(v20, v21);
  }

  *(v0 + 312) = v27;
  v29 = swift_task_alloc();
  *(v0 + 320) = v29;
  *v29 = v0;
  v29[1] = sub_1001F1D6C;
  v30 = *(v0 + 144);

  return MusicLibraryPlaylistRequest.response<>()(v30);
}

uint64_t sub_1001F1D6C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1001F22CC;
  }

  else
  {
    v2 = sub_1001F1E80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F1E80()
{
  v53 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v6 + 8))(v5, v7);
  v50 = *(v4 + 16);
  v50(v2, v1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[23];
  v12 = v0[19];
  v13 = v0[20];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136446210;
    v16 = Playlist.description.getter();
    v18 = v17;
    v51 = *(v13 + 8);
    v51(v11, v12);
    v19 = sub_1000105AC(v16, v18, &v52);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received playlist response, playlist=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  else
  {

    v51 = *(v13 + 8);
    v51(v11, v12);
  }

  v42 = v0[36];
  v20 = v0[29];
  v21 = v0[26];
  v46 = v20;
  v22 = v0[24];
  v23 = v0[25];
  v24 = v0[22];
  v44 = v24;
  v45 = v0[21];
  v26 = v0[19];
  v25 = v0[20];
  v43 = v26;
  v27 = v0[15];
  v48 = v27;
  v49 = v22;
  v47 = v0[14];
  v41 = v0[13];
  v28 = v0[11];
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  v50(v24, v22, v26);
  v30 = v20;
  v31 = v23;
  v42(v30, v28, v23);
  type metadata accessor for MainActor();
  v32 = v41;
  v33 = static MainActor.shared.getter();
  v34 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v35 = (v45 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (*(v21 + 80) + v35 + 8) & ~*(v21 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v33;
  *(v37 + 3) = &protocol witness table for MainActor;
  *(v37 + 4) = v32;
  (*(v25 + 32))(&v37[v34], v44, v43);
  *&v37[v35] = v47;
  (*(v21 + 32))(&v37[v36], v46, v31);
  v38 = v47;
  sub_1001F4CB8(0, 0, v48, &unk_100EBFE68, v37);

  v51(v49, v43);
  (*(v0[34] + 8))(v0[35], v0[33]);

  v39 = v0[1];

  return v39();
}

uint64_t sub_1001F22CC()
{
  v27 = v0;
  (*(v0 + 288))(*(v0 + 224), *(v0 + 88), *(v0 + 200));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 224);
    v5 = *(v0 + 200);
    v25 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136446466;
    sub_100020674(&qword_1011842E8, &unk_1011841D0);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v25(v4, v5);
    v10 = sub_1000105AC(v7, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v0 + 16) = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v26);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Didn't receive a playlist response with tracks=%{public}s. Error=%{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);

    v14(v15, v16);
  }

  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  type metadata accessor for MainActor();
  v20 = v18;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  sub_1001F4CB8(0, 0, v17, &unk_100EBFE58, v22);

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v23 = *(v0 + 8);

  return v23();
}

void sub_1001F2684()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    [v2 startAnimating];
    v3 = [v1 navigationItem];
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v2];
    [v3 setRightBarButtonItem:v4];
  }
}

uint64_t sub_1001F2764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[8] = type metadata accessor for PlaylistCreation.FlowResult(0);
  v7[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F2830, v9, v8);
}

uint64_t sub_1001F2830()
{
  v1 = v0[4];

  v2 = *(v1 + qword_101184130);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = v0[5];
    v6 = sub_10010FC20(&unk_10118A3A0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 64);
    v9 = type metadata accessor for Playlist();
    (*(*(v9 - 8) + 16))(v3, v5, v9);
    *(v3 + v7) = v4;
    sub_100030444(v2);
    v10 = v4;
    sub_10010FC20(&unk_1011841D0);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    *(v3 + v8) = dispatch thunk of Collection.distance(from:to:)();
    swift_storeEnumTagMultiPayload();
    v2(v3);
    sub_100020438(v2);
    sub_1001F4810(v3, type metadata accessor for PlaylistCreation.FlowResult);
  }

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_101218C50);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Dismissing playlist creation sheet", v14, 2u);
  }

  v15 = v0[4];

  [v15 dismissViewControllerAnimated:1 completion:0];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001F2AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F2B84, v6, v5);
}

uint64_t sub_1001F2B84()
{
  v1 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 0;

  static Published.subscript.setter();
  v2 = sub_1001EFBD0();
  [(objc_class *)v2 setEnabled:1];

  v3 = [v1 navigationItem];
  v4 = sub_1001EFD48();
  [v3 setRightBarButtonItem:v4];

  v5 = *&v1[qword_101184168];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;

  static Published.subscript.getter();

  v7 = String.trim()();

  v8 = (v7._object >> 56) & 0xF;
  if ((v7._object & 0x2000000000000000) == 0)
  {
    v8 = v7._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  [v6 setEnabled:v8 != 0];

  v9 = sub_1001EF30C();
  [v1 presentViewController:v9 animated:1 completion:0];

  v10 = *(v0 + 8);

  return v10();
}

void sub_1001F2D88(void *a1)
{
  v1 = a1;
  sub_1001EEA80();
}

void sub_1001F2DD0(char *a1)
{
  v2 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&a1[qword_101184130];
  if (v5)
  {
    swift_storeEnumTagMultiPayload();
    v6 = a1;
    sub_100030444(v5);
    v5(v4);
    sub_100020438(v5);

    sub_1001F4810(v4, type metadata accessor for PlaylistCreation.FlowResult);
  }
}

void sub_1001F2F24()
{
  sub_100020438(*(v0 + qword_101184130));
  v1 = qword_101184138;
  v2 = sub_10010FC20(&unk_1011841D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_101184168);
}

id sub_1001F3008()
{
  v2.receiver = v0;
  v2.super_class = _s14ViewControllerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001F3040(uint64_t a1)
{
  sub_100020438(*(a1 + qword_101184130));
  v2 = qword_101184138;
  v3 = sub_10010FC20(&unk_1011841D0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_101184168);
}

void sub_1001F313C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = sub_10003169C(), v14, v15))
  {
    sub_1000089F8(a2, v12, &unk_10118F670);
    v16 = type metadata accessor for PlaylistCreation.Context(0);
    v17 = v16[6];
    v18 = sub_10010FC20(&unk_1011841D0);
    (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    v19 = &v12[v16[5]];
    *v19 = 0;
    *(v19 + 1) = 0;
    v20 = &v12[v16[7]];
    *v20 = sub_1001F3CB8;
    v20[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_1001F3D44(v12, v9, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001F3D44(v9, v6, type metadata accessor for AppInterfaceContext.Activity);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_100115BB4(v6, v22 + v21);

    sub_100706900(v9, sub_100137E88, v22);

    sub_1001F4810(v9, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001F4810(v12, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
    if (qword_10117F6E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000060E4(v23, qword_101218C50);
    v28 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v28, v24, "Failed to create playlist: missing interface context", v25, 2u);
    }

    v26 = v28;
  }
}

uint64_t sub_1001F34C4(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_10010FC20(&unk_1011841F0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v48 - v4);
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = type metadata accessor for Playlist();
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  sub_1001F3D44(a1, &v48 - v22, type metadata accessor for PlaylistCreation.FlowResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1001F4810(v23, type metadata accessor for PlaylistCreation.FlowResult);
  if (EnumCaseMultiPayload != 2)
  {
    sub_1001F3D44(a1, v20, type metadata accessor for PlaylistCreation.FlowResult);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_1001F4810(v20, type metadata accessor for PlaylistCreation.FlowResult);
    }

    else
    {

      v26 = v53;
      v27 = v54;
      v28 = v17;
      (*(v53 + 32))(v17, v20, v54);
      sub_1007041B4(v17, 0, 0, v5);
      v29 = v52;
      if ((*(v52 + 48))(v5, 1, v6) == 1)
      {
        sub_1000095E8(v5, &unk_1011841F0);
        if (qword_10117F6E8 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000060E4(v30, qword_101218C50);
        v31 = v50;
        (*(v26 + 16))(v50, v28, v27);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v26;
          v36 = swift_slowAlloc();
          v55 = v36;
          *v34 = 136446210;
          sub_1001F3CC0();
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v38 = v28;
          v40 = v39;
          v41 = *(v35 + 8);
          v41(v31, v27);
          v42 = sub_1000105AC(v37, v40, &v55);

          *(v34 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v32, v33, "Failed to generate navigation activity to playlist=%{public}s", v34, 0xCu);
          sub_10000959C(v36);

          return (v41)(v38, v27);
        }

        else
        {

          v47 = *(v26 + 8);
          v47(v31, v27);
          return (v47)(v28, v27);
        }
      }

      else
      {
        v43 = v49;
        sub_100115BB4(v5, v49);
        sub_1001F3D44(v43, v10, type metadata accessor for AppInterfaceContext.Activity);
        v44 = v48;
        sub_1001F3D44(v10, v48, type metadata accessor for AppInterfaceContext.Activity);
        v45 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        sub_100115BB4(v44, v46 + v45);
        sub_100706900(v10, sub_100139B24, v46);

        sub_1001F4810(v10, type metadata accessor for AppInterfaceContext.Activity);
        sub_1001F4810(v43, type metadata accessor for AppInterfaceContext.Activity);
        return (*(v26 + 8))(v28, v27);
      }
    }
  }

  return result;
}

uint64_t sub_1001F3B0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001F3B88(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_10118F670);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_10118F670);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_10118F670);
}

unint64_t sub_1001F3CC0()
{
  result = qword_101184200;
  if (!qword_101184200)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184200);
  }

  return result;
}

uint64_t sub_1001F3D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F3DB4()
{
  v0 = sub_10010FC20(&qword_101183AD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = type metadata accessor for UserProfile();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1000095E8(v2, &qword_101183AD0);
    v8 = type metadata accessor for SocialProfile();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  UserProfile.socialProfile.getter();
  (*(v7 + 8))(v2, v6);
  v9 = type metadata accessor for SocialProfile();
  v10 = 1;
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1000095E8(v5, &qword_101186E00);
  return v10;
}

void sub_1001F4038()
{
  v1 = v0;
  v2 = (v0 + qword_101184130);
  *v2 = 0;
  v2[1] = 0;
  v3 = qword_101184140;
  _s8MetadataO5ModelCMa(0);
  swift_allocObject();
  *(v0 + v3) = sub_1004F627C();
  *(v0 + qword_101184148) = 0;
  v4 = qword_101184150;
  sub_10010FC20(&qword_101184238);
  State.init(wrappedValue:)();
  *(v1 + v4) = v5;
  *(v1 + qword_101184158) = 1;
  *(v1 + qword_101184160) = 0;
  *(v1 + qword_101184168) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001F4144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F41B4(uint64_t a1)
{
  sub_10010FC20(&unk_1011841D0);
  sub_10010FC20(&unk_10118F670);
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[5];
  v9 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1001F15BC(a1, v11, v10, v9, v3, v4, v5, v6);
}

void sub_1001F43A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;

    v16 = a7;
  }
}

void sub_1001F4464(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1001F44DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001F2AEC(a1, v4, v5, v6);
}

uint64_t sub_1001F4590(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1001F2764(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1001F475C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001F00F0(a1, v4, v5, v6);
}

uint64_t sub_1001F4810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F48C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001EF704(a1, v4, v5, v6);
}

uint64_t sub_1001F4988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = *(a1 + 16);
  sub_100015C04(0, v1, 0);
  v2 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = v25;
  v5 = a1;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v10 = *(v5 + 36);
    if (*(*(v5 + 48) + result))
    {
      v11 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v11 = 0x487972617262696CLL;
    }

    if (*(*(v5 + 48) + result))
    {
      v12 = 0xEF72656461654877;
    }

    else
    {
      v12 = 0xED00007265646165;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = *(v5 + 36);
      v24 = result;
      sub_100015C04((v13 > 1), v14 + 1, 1);
      v4 = v25;
      v5 = a1;
      v10 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v7 = 1 << *(v5 + 32);
    if (result >= v7)
    {
      goto LABEL_28;
    }

    v16 = *(v2 + 8 * v8);
    if ((v16 & v9) == 0)
    {
      goto LABEL_29;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_30;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (a1 + 64 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1000D8F7C(result, v10, 0);
          v4 = v25;
          v5 = a1;
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1000D8F7C(result, v10, 0);
      v4 = v25;
      v5 = a1;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1001F4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10001CBE0(a3);

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

  sub_10001CBE0(a3);
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

uint64_t sub_1001F4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&qword_101184430);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101184430);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&qword_101184438);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101184438);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F5520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&unk_101184450);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&unk_101184450);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&qword_101184448);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101184448);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F5AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&qword_101184440);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101184440);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F5D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10001CBE0(a3);

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

  sub_10001CBE0(a3);
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

uint64_t sub_1001F6054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&qword_101184460);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101184460);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F6328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002086C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CBE0(v11);
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

      sub_10010FC20(&qword_101183A20);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001CBE0(a3);

      return v22;
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

  sub_10001CBE0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_101183A20);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t UnifiedMessages.Placement.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099788, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t UnifiedMessages.Placement.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4E6E657473696CLL;
  }

  else
  {
    return 0x487972617262696CLL;
  }
}

uint64_t sub_1001F66AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v3 = 0x487972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xED00007265646165;
  }

  else
  {
    v4 = 0xEF72656461654877;
  }

  if (*a2)
  {
    v5 = 0x6F4E6E657473696CLL;
  }

  else
  {
    v5 = 0x487972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xEF72656461654877;
  }

  else
  {
    v6 = 0xED00007265646165;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001F676C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F6808()
{
  String.hash(into:)();
}

Swift::Int sub_1001F6890()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001F6928@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101099788, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001F6988(uint64_t *a1@<X8>)
{
  v2 = 0x487972617262696CLL;
  if (*v1)
  {
    v2 = 0x6F4E6E657473696CLL;
  }

  v3 = 0xED00007265646165;
  if (*v1)
  {
    v3 = 0xEF72656461654877;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001F6A3C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_1001F6A7C()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessages.Coordinator()) init];
  static UnifiedMessages.Coordinator.shared = result;
  return result;
}

uint64_t *UnifiedMessages.Coordinator.shared.unsafeMutableAddressor()
{
  if (qword_10117F330 != -1)
  {
    swift_once();
  }

  return &static UnifiedMessages.Coordinator.shared;
}

id static UnifiedMessages.Coordinator.shared.getter()
{
  if (qword_10117F330 != -1)
  {
    swift_once();
  }

  v1 = static UnifiedMessages.Coordinator.shared;

  return v1;
}

uint64_t UnifiedMessages.Coordinator.isEnabled.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F6C0C;

  return sub_1001F9864();
}

uint64_t sub_1001F6C0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1001F6D58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1001F6DCC(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6572676F72506E69;
      v6 = 0xEA00000000007373;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x8000000100E3BEB0;
    }
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) != 2)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  v9 = 0xD00000000000001ELL;
  v10 = 0x8000000100E3BEB0;
  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState))
  {
    v9 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {

    return;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return;
  }

  if (*(v1 + v3) > 1u || *(v1 + v3))
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v18 = 0x6572676F72506E69;
      v19 = 0xEA00000000007373;
      if (*(v1 + v3) != 2)
      {
        v18 = 0x6574656C706D6F63;
        v19 = 0xE900000000000064;
      }

      v20 = 0xE700000000000000;
      if (*(v1 + v3))
      {
        v21 = 0x6E776F6E6B6E75;
      }

      else
      {
        v21 = 0xD00000000000001ELL;
      }

      if (!*(v1 + v3))
      {
        v20 = 0x8000000100E3BEB0;
      }

      if (*(v1 + v3) <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      osloga = v22;
      if (*(v1 + v3) <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      v24 = v1;
      if (qword_10117F338 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000060E4(v25, qword_101184300);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = 0x6572676F72506E69;
        v30 = 0xEA00000000007373;
        if (a1 != 2)
        {
          v29 = 0x6574656C706D6F63;
          v30 = 0xE900000000000064;
        }

        v31 = 0xE700000000000000;
        if (a1)
        {
          v32 = 0x6E776F6E6B6E75;
        }

        else
        {
          v32 = 0xD00000000000001ELL;
        }

        if (!a1)
        {
          v31 = 0x8000000100E3BEB0;
        }

        if (a1 <= 1u)
        {
          v33 = v32;
        }

        else
        {
          v33 = v29;
        }

        if (a1 <= 1u)
        {
          v34 = v31;
        }

        else
        {
          v34 = v30;
        }

        v35 = sub_1000105AC(v33, v34, &v49);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_1000105AC(osloga, v23, &v49);
        _os_log_impl(&_mh_execute_header, v26, v27, "💬 mliState changing from %s -> %s", v28, 0x16u);
        swift_arrayDestroy();

        v36 = v24;
      }

      else
      {

        v36 = v24;
      }

      v37 = *(v36 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
      if (v37)
      {
        v38 = String._bridgeToObjectiveC()();
        UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

        v39 = String._bridgeToObjectiveC()();

        [v37 setObject:v38 forKey:v39];
      }

      v40 = [objc_opt_self() defaultStore];
      v41 = String._bridgeToObjectiveC()();

      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v42 = String._bridgeToObjectiveC()();

      [v40 setString:v41 forKey:v42];

      v43 = *(v36 + v3);
      if (a1 == 2)
      {
        if (v43 != 3)
        {
          return;
        }
      }

      else if (a1 != 1 || v43 != 2)
      {
        return;
      }

      v44 = sub_10031FB40(a1, v43);
      v45 = *(v36 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement);
      sub_100363FA8(v44);
      oslog = Dictionary._bridgeToObjectiveC()().super.isa;

      v46 = [v45 enqueueData:oslog];

      goto LABEL_75;
    }
  }

  else
  {
  }

  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_101184300);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, "💬 GDPR acceptance required before retrieving mliState.", v17, 2u);
  }

LABEL_75:
}

uint64_t UnifiedMessages.Coordinator.publishEngagementEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_10000954C(a1, v2);

  return sub_1001F94D4(v4, v1, v2, v3);
}

char *sub_1001F7504()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10010FC20(&qword_101184468);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = &v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_serviceType];
  *v6 = 0x636973756DLL;
  v6[1] = 0xE500000000000000;
  v7 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_bag;
  v8 = objc_allocWithZone(AMSProcessInfo);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithBundleIdentifier:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() bagForProfile:v11 profileVersion:v12 processInfo:v10];

  *&v0[v7] = v13;
  v14 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_observedPlacements;
  *&v0[v14] = sub_10010ED84(&off_1010998D0);
  *&v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
  v15 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults;
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v16 = objc_allocWithZone(NSUserDefaults);

  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithSuiteName:v17];

  *&v0[v15] = v18;
  *&v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver] = 0;
  v19 = OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator__inlineBubbleTipRequests;
  v31 = sub_10010C68C(_swiftEmptyArrayStorage);
  sub_10010FC20(&unk_101184320);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v19], v5, v2);
  v20 = [objc_allocWithZone(AMSEngagement) initWithBag:*&v0[v7]];
  *&v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement] = v20;
  v0[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState] = 0;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v30, "init");
  v22 = [objc_opt_self() sharedPrivacyInfo];
  LODWORD(v2) = [v22 privacyAcknowledgementRequiredForMusic];

  if (v2)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000060E4(v23, qword_101184300);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "💬 GDPR has not been accepted; prevent setup and observing for messages.", v26, 2u);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for PrivacyAcknowledgementObserver();
    swift_allocObject();
    *&v21[OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1001FAA50, v27);
  }

  else
  {
    sub_1001F7AB8();
  }

  return v21;
}

uint64_t sub_1001F7964(uint64_t result)
{
  if ((result & 1) == 0)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, qword_101184300);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "💬 GDPR has been acknowledged, start setup.", v4, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1001F7AB8();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

void sub_1001F7AB8()
{
  v1 = v0;
  v2 = ICActiveUserIdentityDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultIdentityStore];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_accountDidChangeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_1001FAA58, v6);

  v7 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v8 = sub_1001F4988(*(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_observedPlacements));
  sub_10066FFD8(v8);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v10 = String._bridgeToObjectiveC()();
  [v7 addObserver:v1 placements:isa serviceType:v10];

  sub_1001F7C74();
}

void sub_1001F7C74()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultStore];
  UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
  if (v8)
  {

    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 stringForKey:v9];

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v12;
    }

    else
    {
      v11 = 0;
      v8 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_101184300);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v46 = v11;
  if (os_log_type_enabled(v14, v15))
  {
    v45 = v1;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v16 = 136315394;

    sub_10010FC20(&qword_1011815E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000105AC(v17, v18, &v49);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v47 = v5;
    v48 = v7;

    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, &v49);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "💬 mliState UserDefaults: %s, NSUbiquitousKeyValueStore: %s", v16, 0x16u);
    swift_arrayDestroy();

    v1 = v45;
  }

  if (v8)
  {
    v23 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v23 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      v50._countAndFlagsBits = v11;
      v50._object = v8;
      v24 = sub_1001FA7A4(v50);
      if (v24 == 4)
      {

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v48 = v8;
          v49 = v28;
          *v27 = 136315138;
          v47 = v46;

          sub_10010FC20(&qword_1011815E0);
          v29 = String.init<A>(describing:)();
          v31 = sub_1000105AC(v29, v30, &v49);

          *(v27 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "💬 UserDefaults mliState=%s is not a valid mliState value", v27, 0xCu);
          sub_10000959C(v28);
        }

        goto LABEL_29;
      }

      v38 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState);
      *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) = v24;
      sub_1001F6DCC(v38);

      return;
    }
  }

  if (!v7)
  {
LABEL_33:
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "💬 Setting mliState=unknown", v41, 2u);
    }

    v42 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState);
    *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) = 1;
    sub_1001F6DCC(v42);
    return;
  }

  v32 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v32 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    goto LABEL_33;
  }

  swift_bridgeObjectRetain_n();
  v51._countAndFlagsBits = v5;
  v51._object = v7;
  v33 = sub_1001FA7A4(v51);
  if (v33 == 4)
  {

    v25 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v34))
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_30;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47 = v36;
    *v35 = 136315138;
    v37 = sub_1000105AC(v5, v7, &v47);

    *(v35 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v34, "💬 NSUbiquitousKeyValueStore mliState=%s is not a valid mliState value", v35, 0xCu);
    sub_10000959C(v36);

LABEL_29:

LABEL_30:

    return;
  }

  v43 = v33;

  v44 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState);
  *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_mliState) = v43;
  sub_1001F6DCC(v44);
}

void sub_1001F82E8()
{
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101184300);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "💬 Active user changed, resetting mliState", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_userDefaults);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

      v8 = String._bridgeToObjectiveC()();

      [v7 removeObjectForKey:v8];
    }
  }
}

uint64_t UnifiedMessages.Coordinator.engagement(_:didUpdate:placement:serviceType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a2;
  v13 = a2;
  v14 = v4;

  sub_1001F4CB8(0, 0, v10, &unk_100EBFF00, v12);
}

uint64_t sub_1001F8578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = swift_task_alloc();
  v7[10] = v8;
  *v8 = v7;
  v8[1] = sub_1001F8620;

  return sub_1001F9864();
}

uint64_t sub_1001F8620(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001F8720, 0, 0);
}

uint64_t sub_1001F8720()
{
  v35 = v0;
  if (*(v0 + 88) != 1)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101184300);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_24;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "💬 Unified Messages are disabled; preventing the engagement request from displaying.", v9, 2u);
    goto LABEL_23;
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  v4 = _findStringSwitchCase(cases:string:)(&off_101099788, v3);

  if (!v4)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (qword_10117F338 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_101184300);

    v7 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v7, v27))
    {
      goto LABEL_24;
    }

    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000105AC(v29, v28, &v34);
    _os_log_impl(&_mh_execute_header, v7, v27, "💬 Could not create Placement enum for placement string %s", v30, 0xCu);
    sub_10000959C(v31);

LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v5 = 1;
LABEL_10:
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_101184300);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000105AC(v14, v13, &v34);
    _os_log_impl(&_mh_execute_header, v11, v12, "💬 Received pushed message for %s", v15, 0xCu);
    sub_10000959C(v16);
  }

  if (!*(v0 + 72))
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000105AC(v20, v19, &v34);
      _os_log_impl(&_mh_execute_header, v17, v18, "💬 Request is nil so removing %s", v21, 0xCu);
      sub_10000959C(v22);
    }
  }

  v23 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  v25 = static Published.subscript.modify();
  sub_10040764C(v23, v5);
  v25(v0 + 16, 0);

LABEL_25:
  v32 = *(v0 + 8);

  return v32();
}

uint64_t UnifiedMessages.Coordinator.engagement(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  return sub_1001F8D64(a1, a2, a3, a4, "💬 Dialogs without a specified placement are not supported.");
}

{
  return sub_1001F8D64(a1, a2, a3, a4, "💬 Full sheets are not supported.");
}

uint64_t sub_1001F8D64(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, const char *a5)
{
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_101184300);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a5, v10, 2u);
  }

  sub_1001F9D4C();
  v11 = swift_allocError();
  a3(0, v11);
}

void sub_1001F8EA0(void *a1, int a2, void *a3, void *a4, void *aBlock, const char *a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1001FA7F0(v10, a6);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_1001F9030@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001F9070()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101184300);
  sub_1000060E4(v0, qword_101184300);
  return static Logger.music(_:)();
}

uint64_t sub_1001F90E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1001F9160(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1001F91D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001F92CC;

  return v5(v2 + 32);
}

uint64_t sub_1001F92CC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001F93E0(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001FAAB4;

  return v5(v2 + 16);
}

uint64_t sub_1001F94D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = *(a2 + OBJC_IVAR____TtCE5MusicO9MusicCore15UnifiedMessages11Coordinator_engagement);
  v12 = (*(a4 + 24))(a3, a4);
  sub_100363FA8(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1001F9640(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001F9734;

  return v5(v2 + 16);
}

uint64_t sub_1001F9734()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001F9880()
{
  v1 = JSBridge.shared.unsafeMutableAddressor();
  v2 = *v1;
  *(v0 + 288) = *v1;
  v3 = *((swift_isaMask & *v2) + 0xE0);
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_1001F99C4;

  return v6(v0 + 144);
}

uint64_t sub_1001F99C4()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1001F9AD8, 0, 0);
}

uint64_t sub_1001F9AD8()
{
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
  swift_beginAccess();
  v3 = *(v1 + v2);
  static ApplicationCapabilities.shared.getter((v0 + 16));
  v4 = *(v0 + 48);

  sub_100014984(v0 + 16);
  v5 = sub_10048BBDC(10, v4);

  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101184300);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "💬 Are Unified Messages enabled?: %{BOOL}d, %{BOOL}d", v9, 0xEu);
  }

  sub_1001FAA60(v0 + 144);
  v10 = *(v0 + 8);

  return v10(v3 & v5);
}

uint64_t sub_1001F9C78(uint64_t a1)
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
  v10[1] = sub_100008F30;

  return sub_1001F8578(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1001F9D4C()
{
  result = qword_101184330;
  if (!qword_101184330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184330);
  }

  return result;
}

unint64_t sub_1001F9DA4()
{
  result = qword_101184338;
  if (!qword_101184338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184338);
  }

  return result;
}

unint64_t sub_1001F9DFC()
{
  result = qword_101184340;
  if (!qword_101184340)
  {
    sub_1001109D0(&qword_101184348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184340);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedMessages.Coordinator()
{
  result = qword_101184410;
  if (!qword_101184410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F9EC4()
{
  sub_1001F9F94();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001F9F94()
{
  if (!qword_101184420)
  {
    sub_1001109D0(&unk_101184320);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101184420);
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1001FA0D8()
{
  result = qword_101184428;
  if (!qword_101184428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184428);
  }

  return result;
}

uint64_t sub_1001FA12C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1001FA1E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1001FA29C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F93E0(a1, v4);
}

uint64_t sub_1001FA354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009740(a1, v4);
}

uint64_t sub_1001FA40C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F9640(a1, v4);
}

uint64_t sub_1001FA4C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1001FA57C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_1001FA634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

uint64_t sub_1001FA6EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F93E0(a1, v4);
}

unint64_t sub_1001FA7A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099850, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001FA7F0(uint64_t a1, const char *a2)
{
  if (qword_10117F338 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101184300);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  sub_1001F9D4C();
  swift_allocError();
  v8 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v8);
}

uint64_t sub_1001FA92C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001FA97C(uint64_t a1)
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
  v10[1] = sub_10002F3F4;

  return sub_1001F8578(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001FAAB8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_10066C920(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 40);
  while (1)
  {
    v8 = *v7;
    v17 = *(v7 - 1);
    v18 = v8;
    a1(&v19, &v17);
    if (v3)
    {
      break;
    }

    v9 = v19;
    v10 = v20;
    v11 = v21;
    v22 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_10066C920((v12 > 1), v13 + 1, 1);
      v5 = v22;
    }

    v5[2] = v13 + 1;
    v14 = &v5[3 * v13];
    v14[4] = v9;
    v7 += 16;
    *(v14 + 40) = v10;
    v14[6] = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001FABE4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001FACD0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_10066CDA4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10066CDA4((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      v6[2] = v14 + 1;
      v6[v14 + 4] = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1001FAE44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryArtistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_1001FAE8C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v93) = a2;
  v83 = a1;
  ObjectType = swift_getObjectType();
  v4 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v4 - 8);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v6 - 8);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = _s6AlbumsV5ScopeOMa(0);
  v8 = __chkstk_darwin(v86);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v87 = &v77 - v11;
  __chkstk_darwin(v10);
  v84 = &v77 - v12;
  v13 = _s6AlbumsVMa(0);
  __chkstk_darwin(v13 - 8);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicFavoriteStatus();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = __chkstk_darwin(v15);
  v79 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v77 - v18;
  v20 = type metadata accessor for Artist();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared] = 0;
  v24 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___globalHeaderRegistration;
  v25 = sub_10010FC20(&unk_10118A650);
  v26 = *(*(v25 - 8) + 56);
  v26(&v3[v24], 1, 1, v25);
  v26(&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___headerRegistration], 1, 1, v25);
  v27 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumGridCellRegistration;
  v28 = sub_10010FC20(&qword_101184578);
  (*(*(v28 - 8) + 56))(&v3[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumListCellRegistration;
  v30 = sub_10010FC20(&qword_101184588);
  (*(*(v30 - 8) + 56))(&v3[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoGridCellRegistration;
  v32 = sub_10010FC20(&unk_101193A80);
  (*(*(v32 - 8) + 56))(&v3[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoListCellRegistration;
  v34 = sub_10010FC20(&unk_101193A90);
  (*(*(v34 - 8) + 56))(&v3[v33], 1, 1, v34);
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponse] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponseSubscription] = 0;
  v35 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController;
  v36 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v35] = sub_10003AAD8(0xD000000000000023, 0x8000000100E416D0);
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader] = 0;
  v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController] = 0;
  v37 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___actionMetricsReportingContext;
  v38 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v38 - 8) + 56))(&v3[v37], 1, 1, v38);
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_sortBinding] = 0;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem] = 0;
  v39 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  v40 = v21;
  v78 = v21;
  v41 = *(v21 + 16);
  v42 = v83;
  v77 = v20;
  v41(&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist], v83, v20);
  v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded] = v93;
  swift_beginAccess();
  v41(v23, &v3[v39], v20);
  Artist.favoriteStatus.getter();
  v90 = *(v40 + 8);
  v91 = v40 + 8;
  v90(v23, v20);
  v43 = v79;
  v44 = v80;
  v45 = v81;
  (*(v80 + 104))(v79, enum case for MusicFavoriteStatus.favorited(_:), v81);
  LOBYTE(v23) = static MusicFavoriteStatus.== infix(_:_:)();
  v46 = *(v44 + 8);
  v46(v43, v45);
  v46(v19, v45);
  v47 = v82;
  v48 = &v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState];
  v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState] = v23 & 1;
  v49 = *(sub_10010FC20(&qword_101184608) + 28);
  v50 = sub_10010FC20(&qword_101184610);
  (*(*(v50 - 8) + 56))(&v48[v49], 1, 1, v50);
  v51 = v84;
  v52 = v77;
  v41(v84, v42, v77);
  swift_storeEnumTagMultiPayload();
  v53 = v85;
  v54 = v51;
  LOBYTE(v51) = v93;
  sub_1002884E4(v54, v93, v85);
  sub_10010FC20(&qword_101184618);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] = sub_1003A1E94(v53);
  v55 = v89;
  v41(v89, v42, v52);
  (*(v78 + 56))(v55, 0, 1, v52);
  v56 = v88;
  sub_1006FC4AC(v55, v51, v88);
  sub_10010FC20(&unk_101184620);
  swift_allocObject();
  v57 = sub_1003A18B4(v56);
  v58 = v87;
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController] = v57;
  v41(v58, v42, v52);
  swift_storeEnumTagMultiPayload();
  sub_100217D58(v58, v47, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v61 = 0x8000000100E41720;
      sub_100217EB4(v58, _s6AlbumsV5ScopeOMa);
      v60 = 0xD000000000000010;
    }

    else
    {
      sub_100217EB4(v58, _s6AlbumsV5ScopeOMa);
      v61 = 0xED00007365726E65;
      v60 = 0x477972617262694CLL;
    }

    v58 = v47;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v61 = 0x8000000100E41700;
      sub_100217EB4(v58, _s6AlbumsV5ScopeOMa);
      v58 = v47;
      v62 = ObjectType;
      v60 = 0xD000000000000013;
      goto LABEL_12;
    }

    v60 = 0xD000000000000013;
    if (EnumCaseMultiPayload == 3)
    {
      v60 = 0x417972617262694CLL;
      v61 = 0xED0000736D75626CLL;
    }

    else
    {
      v61 = 0x8000000100E41740;
    }
  }

  v62 = ObjectType;
LABEL_12:
  v63 = v90;
  sub_100217EB4(v58, _s6AlbumsV5ScopeOMa);
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] = sub_10059A684(v60, v61, 0);
  v94.receiver = v3;
  v94.super_class = v62;
  v64 = objc_msgSendSuper2(&v94, "initWithNibName:bundle:", 0, 0);
  v65 = [v64 navigationItem];
  [v65 setLargeTitleDisplayMode:2];

  v66 = [v64 navigationItem];
  if (qword_10117FD78 != -1)
  {
    swift_once();
  }

  v67 = qword_1011A3E68;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  objc_setAssociatedObject(v66, v67, isa, 3);

  v69 = [v64 navigationItem];
  [v69 setBackButtonDisplayMode:2];

  v70 = [v64 navigationItem];
  Artist.name.getter();
  v71 = String._bridgeToObjectiveC()();

  [v70 setBackButtonTitle:v71];

  UIViewController.playActivityFeatureIdentifier.setter(1);
  sub_10010FC20(&unk_101182D80);
  v72 = swift_allocObject();
  v93 = xmmword_100EBC6B0;
  *(v72 + 16) = xmmword_100EBC6B0;
  v73 = sub_100217F14();
  *(v72 + 32) = &type metadata for LibraryFilterTrait;
  *(v72 + 40) = v73;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v74 = swift_allocObject();
  *(v74 + 16) = v93;
  v75 = sub_100137E8C();
  *(v74 + 32) = &type metadata for MusicLibraryTrait;
  *(v74 + 40) = v75;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  v63(v42, v52);
  return v64;
}

uint64_t sub_1001FBB04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = _s6AlbumsVMa(0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v100 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v0;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "viewDidLoad", v4);
  v6 = sub_1001FC874();
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;
  if (v7 == 1)
  {
    sub_10043EAB8();
  }

  v8 = sub_1001FC918();
  v9 = v8;
  v10 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView;
  v11 = *&v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
  v12 = &unk_101184000;
  if (*(v11 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56) == 1)
  {
    v97 = v8;
    v98 = ObjectType;
    v99 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = sub_100219540;
LABEL_7:
    v96 = v14;
    v16 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
    v17 = v11;
    v18 = [v16 init];
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = objc_opt_self();
    v21 = [v20 fractionalWidthDimension:1.0];
    v22 = [v20 estimatedDimension:65.0];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:v24 alignment:1];

    sub_10010FC20(&qword_101183990);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100EBC6C0;
    *(v26 + 32) = v25;
    sub_100009F78(0, &unk_1011913A0);
    v27 = v25;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setBoundarySupplementaryItems:isa];

    v29 = *(v19 + 16);
    *(v19 + 16) = v27;

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0u;
    *(v31 + 72) = v96;
    *(v31 + 80) = v13;
    *(v31 + 88) = v19;
    v32 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v113 = sub_100219088;
    v114 = v31;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v111 = sub_1005A63A8;
    v112 = &unk_1010A15A0;
    v33 = _Block_copy(&aBlock);

    v34 = [v32 initWithSectionProvider:v33 configuration:v18];

    _Block_release(v33);

    ObjectType = v98;
    v10 = v99;
    v12 = &unk_101184000;
    v9 = v97;
    goto LABEL_9;
  }

  v15 = *(*&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_100219080;
  if (v15)
  {
    v97 = v9;
    v98 = ObjectType;
    v99 = v10;
    goto LABEL_7;
  }

  v35 = v11;
  v34 = sub_10059B450(v35, 1, sub_100219080, v13);

LABEL_9:
  [v9 setCollectionViewLayout:v34];

  v36 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController];
  [*&v1[v10] setPrefetchDataSource:v36];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = ObjectType;
  v39 = (v36 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider);
  v40 = *(v36 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider);
  *v39 = sub_10021908C;
  v39[1] = v38;

  sub_100020438(v40);

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = (v36 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v43 = *(v36 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v42 = sub_100219094;
  v42[1] = v41;

  sub_100020438(v43);

  v108 = _swiftEmptyArrayStorage;
  sub_1001FE264();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  static ApplicationCapabilities.shared.getter(&aBlock);
  sub_100014984(&aBlock);
  if (BYTE8(aBlock))
  {
    type metadata accessor for MusicLibrary();
    v44 = [v1 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    static MusicLibrary.shared.getter();
    LOBYTE(v44) = static MusicLibrary.== infix(_:_:)();

    if (v44)
    {
      sub_1001FE348();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1001FE648();
    }
  }

  v45 = [v1 navigationItem];
  sub_100009F78(0, &qword_101181580);
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setRightBarButtonItems:v46 animated:0];

  v47 = *&v1[v10];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = &v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v50 = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v49 = sub_10021909C;
  v49[1] = v48;
  v51 = v47;

  sub_100020438(v50);

  v52 = *&v1[v12[150]];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = *(v52 + 16);
  *(v52 + 16) = sub_1002190A4;
  *(v52 + 24) = v53;

  sub_100020438(v54);

  v55 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = v55[4];
  v55[4] = sub_1002190B0;
  v55[5] = v56;

  sub_100020438(v57);

  v58 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = *(v58 + 32);
  *(v58 + 32) = sub_1002190B8;
  *(v58 + 40) = v59;

  sub_100020438(v60);

  v61 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController];
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = *(v61 + 88);
  *(v61 + 88) = sub_1002190C0;
  *(v61 + 96) = v62;

  sub_100020438(v63);

  type metadata accessor for Whitetail.Binding();
  v64 = v55[6];
  v65 = *(*v64 + 96);
  swift_beginAccess();
  v66 = v100;
  sub_100217D58(v64 + v65, v100, _s6AlbumsVMa);
  sub_100288A9C();
  sub_100217EB4(v66, _s6AlbumsVMa);
  UIScreen.Dimensions.size.getter(v67);
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v10;
  v76 = v75;
  v107[3] = &type metadata for UserDefaultsKeyValueTrigger;
  v107[4] = &protocol witness table for UserDefaultsKeyValueTrigger;
  v77 = swift_allocObject();
  v107[0] = v77;
  v77[2] = v69;
  v77[3] = v71;
  v77[4] = v73;
  v77[5] = v76;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_sortBinding] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v107, 0, sub_1002190C8, v78);

  v79 = sub_10010FC20(&unk_10118A650);
  v101[3] = v79;
  v80 = sub_10001C8B8(v101);
  sub_100200938(v80);
  v102[3] = v79;
  v81 = sub_10001C8B8(v102);
  sub_100200BBC(v81);
  v103[3] = sub_10010FC20(&qword_101184578);
  v82 = sub_10001C8B8(v103);
  sub_100200E44(v82);
  v104[3] = sub_10010FC20(&qword_101184588);
  v83 = sub_10001C8B8(v104);
  sub_1002010BC(v83);
  v105[3] = sub_10010FC20(&unk_101193A80);
  v84 = sub_10001C8B8(v105);
  sub_10020135C(v84);
  v106[3] = sub_10010FC20(&unk_101193A90);
  v85 = sub_10001C8B8(v106);
  sub_1002015D4(v85);
  swift_arrayDestroy();
  v86 = *&v1[v74];
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v88 = swift_allocObject();
  *(v88 + 24) = 0u;
  *(v88 + 40) = 0u;
  *(v88 + 56) = 0u;
  *(v88 + 72) = 0u;
  *(v88 + 88) = 1;
  *(v88 + 96) = 0;
  v89 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v90 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v90 - 8) + 56))(v88 + v89, 1, 1, v90);
  *(v88 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v88 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v88 + 16) = v86;
  *(v88 + 24) = sub_1002190D0;
  *(v88 + 32) = v87;
  *(v88 + 40) = 0;
  v91 = *(v88 + 56);
  *(v88 + 64) = 0;
  *(v88 + 48) = 0;
  *(v88 + 56) = 0;
  v92 = v86;
  swift_retain_n();
  sub_100020438(v91);
  v93 = *(v88 + 72);
  *(v88 + 72) = 0;
  *(v88 + 80) = 0;
  sub_100020438(v93);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_dragDropController] = v88;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  return sub_1002027C8();
}

uint64_t sub_1001FC874()
{
  v1 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1001FC918()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryArtistsDetailView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1001FCD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = 0.0;
  if (Strong)
  {
    v9 = Strong;
    v10 = IndexPath.section.getter();
    v11 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_1001FCF68(v10, v6);
    sub_1000095E8(v6, &unk_1011846F0);
    if (v12 == 2)
    {
    }

    else
    {
      v13 = sub_1001FC918();
      v14 = v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

      if ((v14 & 1) != 0 || *(*&v9[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32) == 1)
      {
        v15 = [objc_opt_self() currentTraitCollection];
        [v15 displayScale];

        if (v12)
        {
          return 85.3333333;
        }

        else
        {
          return 64.0;
        }
      }

      else
      {
        v16 = *&v9[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
        v17 = sub_100189858();

        v8 = (v17)(a1, a2);
      }
    }
  }

  return v8;
}

uint64_t sub_1001FCF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101184718);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_10010FC20(&unk_101184720);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100205144())
  {
    return 2;
  }

  sub_1000089F8(a2, v12, &unk_1011846F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_1011846F0);
    v17 = sub_1001FFA80();
    v18 = sub_1001FFC7C();
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  sub_100217DC0(v12, v16, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  sub_1000089F8(v16, v9, &unk_101184720);
  v21 = sub_10010FC20(&unk_10118F1E0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_1000095E8(v9, &unk_101184720);
    v23 = 0;
  }

  else
  {
    v24 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v22 + 8))(v9, v21);
    v23 = !v24;
  }

  sub_1000089F8(&v16[*(v13 + 20)], v6, &qword_101184718);
  v25 = sub_10010FC20(&unk_101193AA0);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v6, 1, v25) == 1)
  {
    sub_100217EB4(v16, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
    sub_1000095E8(v6, &qword_101184718);
    if (v23)
    {
      return 2 * (a1 != 0);
    }

    return 2;
  }

  v27 = MusicLibrarySectionedResponse.isEmpty.getter();
  sub_100217EB4(v16, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  (*(v26 + 8))(v6, v25);
  v18 = !v27;
  if (!v23)
  {
LABEL_18:
    if (v18)
    {
      if (a1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 2;
  }

LABEL_4:
  if (!v18)
  {
    return 2 * (a1 != 0);
  }

  if (a1 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (a1)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001FD3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v106 = a1;
  v4 = sub_10010FC20(&unk_101181600);
  __chkstk_darwin(v4 - 8);
  v98 = &v91 - v5;
  v6 = sub_10010FC20(&qword_101193AF0);
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v95 = &v91 - v7;
  v8 = sub_10010FC20(&qword_101184718);
  __chkstk_darwin(v8 - 8);
  v100 = &v91 - v9;
  v10 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v10 - 8);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v91 - v13;
  v14 = sub_10010FC20(&qword_1011815C0);
  __chkstk_darwin(v14 - 8);
  v94 = &v91 - v15;
  v16 = sub_10010FC20(&qword_1011846D8);
  v93 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v91 - v17;
  v19 = sub_10010FC20(&unk_101184720);
  __chkstk_darwin(v19 - 8);
  v21 = &v91 - v20;
  v22 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v22 - 8);
  v99 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v101 = &v91 - v25;
  v26 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v26 - 8);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v91 - v30;
  v32 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v105 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v36 = Strong;
  sub_1000089F8(v106, v107, &unk_101183F30);
  if (!v107[3])
  {

    sub_1000095E8(v107, &unk_101183F30);
    (*(v33 + 56))(v31, 1, 1, v32);
    goto LABEL_6;
  }

  v106 = a3;
  v37 = swift_dynamicCast();
  v38 = *(v33 + 56);
  v38(v31, v37 ^ 1u, 1, v32);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {

    a3 = v106;
LABEL_6:
    v39 = &unk_1011846F0;
    v40 = v31;
LABEL_7:
    sub_1000095E8(v40, v39);
LABEL_8:
    v41 = type metadata accessor for Artwork();
    return (*(*(v41 - 8) + 56))(a3, 1, 1, v41);
  }

  v92 = v21;
  v43 = v36;
  v44 = v105;
  sub_100217DC0(v31, v105, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  v45 = IndexPath.section.getter();
  sub_100217D58(v44, v28, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
  v38(v28, 0, 1, v32);
  v46 = sub_1001FCF68(v45, v28);
  sub_1000095E8(v28, &unk_1011846F0);
  if (v46 == 2)
  {
    sub_100217EB4(v44, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);

    a3 = v106;
    goto LABEL_8;
  }

  v91 = v43;
  if (v46)
  {
    v47 = v105;
    v48 = v100;
    sub_1000089F8(v105 + *(v32 + 20), v100, &qword_101184718);
    v49 = sub_10010FC20(&unk_101193AA0);
    v50 = *(v49 - 8);
    v51 = (*(v50 + 48))(v48, 1, v49);
    a3 = v106;
    if (v51 == 1)
    {
      sub_1000095E8(v48, &qword_101184718);
      v52 = type metadata accessor for MusicVideo();
      v53 = v102;
      (*(*(v52 - 8) + 56))(v102, 1, 1, v52);
      v54 = v103;
LABEL_29:
      sub_1000089F8(v53, v54, &unk_1011846B0);
      type metadata accessor for MusicVideo();
      v83 = *(v52 - 8);
      if ((*(v83 + 48))(v54, 1, v52) != 1)
      {
        MusicVideo.artwork.getter();

        sub_1000095E8(v53, &unk_1011846B0);
        sub_100217EB4(v47, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
        return (*(v83 + 8))(v54, v52);
      }

      sub_1000095E8(v53, &unk_1011846B0);
      sub_100217EB4(v47, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
      v40 = v54;
      v39 = &unk_1011846B0;
      goto LABEL_7;
    }

    v61 = MusicLibrarySectionedResponse.sections.getter();
    (*(v50 + 8))(v48, v49);
    v107[0] = _swiftEmptyArrayStorage;
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = v97;
      v64 = *(v96 + 16);
      v65 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v101 = v61;
      v66 = v61 + v65;
      v67 = *(v96 + 72);
      v68 = (v96 + 8);
      v69 = v98;
      v70 = v95;
      do
      {
        v64(v70, v66, v63);
        MusicLibrarySection.items.getter();
        (*v68)(v70, v63);
        sub_1001240F8(v69);
        v66 += v67;
        --v62;
      }

      while (v62);

      v71 = v107[0];
      v47 = v105;
    }

    else
    {

      v71 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    v53 = v102;
    v54 = v103;
    if ((result & 0x8000000000000000) == 0)
    {
      v81 = result;
      if (result < v71[2])
      {
        v52 = type metadata accessor for MusicVideo();
        v82 = *(v52 - 8);
        (*(v82 + 16))(v53, v71 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81, v52);

        (*(v82 + 56))(v53, 0, 1, v52);
        a3 = v106;
        goto LABEL_29;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v105;
  v56 = v92;
  sub_1000089F8(v105, v92, &unk_101184720);
  v57 = sub_10010FC20(&unk_10118F1E0);
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    sub_1000095E8(v56, &unk_101184720);
    v59 = type metadata accessor for Album();
    v60 = v101;
    (*(*(v59 - 8) + 56))(v101, 1, 1, v59);
  }

  else
  {
    v72 = MusicLibrarySectionedResponse.sections.getter();
    (*(v58 + 8))(v56, v57);
    v107[0] = _swiftEmptyArrayStorage;
    v73 = *(v72 + 16);
    if (v73)
    {
      v74 = v94;
      v75 = *(v93 + 16);
      v76 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v103 = v72;
      v77 = v72 + v76;
      v78 = *(v93 + 72);
      v79 = (v93 + 8);
      do
      {
        v75(v18, v77, v16);
        MusicLibrarySection.items.getter();
        (*v79)(v18, v16);
        sub_100124960(v74);
        v77 += v78;
        --v73;
      }

      while (v73);

      v80 = v107[0];
    }

    else
    {

      v80 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    v60 = v101;
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    v84 = result;
    v55 = v105;
    if (result >= v80[2])
    {
LABEL_43:
      __break(1u);
      return result;
    }

    v59 = type metadata accessor for Album();
    v85 = *(v59 - 8);
    (*(v85 + 16))(v60, v80 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v84, v59);

    (*(v85 + 56))(v60, 0, 1, v59);
  }

  v86 = v99;
  sub_1000089F8(v60, v99, &unk_101184730);
  type metadata accessor for Album();
  v87 = *(v59 - 8);
  v88 = (*(v87 + 48))(v86, 1, v59);
  v89 = v106;
  if (v88 == 1)
  {

    sub_1000095E8(v60, &unk_101184730);
    sub_100217EB4(v55, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
    sub_1000095E8(v86, &unk_101184730);
    v90 = type metadata accessor for Artwork();
    return (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
  }

  else
  {
    Album.artwork.getter();

    sub_1000095E8(v60, &unk_101184730);
    sub_100217EB4(v55, type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext);
    return (*(v87 + 8))(v86, v59);
  }
}

id sub_1001FE264()
{
  v1 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100217E54, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

objc_class *sub_1001FE348()
{
  v1 = sub_10010FC20(&unk_101184950);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem;
  v5 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem);
  }

  else
  {
    v7 = (v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState);
    swift_beginAccess();
    v8 = sub_10010FC20(&qword_101184608);
    sub_1000089F8(&v7[*(v8 + 28)], v3, &unk_101184950);
    v9 = sub_10010FC20(&qword_101184610);
    if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
    {
      sub_1000095E8(v3, &unk_101184950);
      v10 = *v7;
    }

    else
    {
      v10 = v3[*(v9 + 32)];
      sub_1000095E8(v3, &qword_101184610);
    }

    swift_endAccess();
    sub_100216128(v10, v24);
    v11 = v24[0];
    v12 = v24[2];
    v22 = v24[1];
    v23 = v24[3];
    v13 = v24[4];
    v21 = v24[5];
    sub_100009F78(0, &qword_101181580);
    sub_100009F78(0, &qword_1011839A0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = v11;

    v15 = v0;
    v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v22, v12, v11, 0, v16, 0, v23, v13);

    v18 = *(v15 + v4);
    *(v15 + v4) = v17;
    v6 = v17;

    v5 = 0;
  }

  v19 = v5;
  return v6;
}

uint64_t sub_1001FE648()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v33 = &v30 - v3;
  v34 = sub_10010FC20(&qword_1011848E8);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v30 - v4;
  v5 = sub_10010FC20(&unk_1011848F0);
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v30 - v6;
  v7 = type metadata accessor for Artist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101181B18);
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  MusicLibraryRequest.init()();
  MusicLibraryRequest.ignoreExplicitContentRestrictions.setter();
  swift_getKeyPath();
  sub_10010FC20(&qword_101184900);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  (*(v8 + 16))(v10, v1 + v15, v7);
  v16 = Artist.id.getter();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  MusicLibraryRequest.filter<A>(matching:memberOf:)();

  sub_100020674(&unk_101184908, &qword_101181B18);
  v19 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v20 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponse;
  swift_beginAccess();
  *(v1 + v20) = v19;

  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    swift_endAccess();

    v22 = v31;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();

    sub_100009F78(0, &qword_101182960);
    v23 = static OS_dispatch_queue.main.getter();
    v39 = v23;
    v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v25 = v33;
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
    sub_100020674(&qword_101184918, &qword_1011848E8);
    sub_1000206BC();
    v27 = v34;
    v26 = v35;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v25, &qword_101182140);

    (*(v32 + 8))(v22, v27);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_101184928, &unk_1011848F0);
    v28 = v37;
    v21 = Publisher<>.sink(receiveValue:)();

    (*(v36 + 8))(v26, v28);
    (*(v38 + 8))(v13, v11);
  }

  else
  {
    (*(v38 + 8))(v13, v11);
    swift_endAccess();
  }

  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponseSubscription) = v21;
}

void sub_1001FEC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)
    {
LABEL_9:

      return;
    }

    v6 = sub_1001FC918();
    v7 = *&v5[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
    if (*(v7 + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56) == 1)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
    }

    else
    {
      v9 = *(*&v5[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32);
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      if ((v9 & 1) == 0)
      {
        v29 = v7;
        v28 = sub_10059B450(v29, 1, sub_100219540, v8);

        goto LABEL_8;
      }
    }

    v10 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
    v11 = v7;
    v12 = [v10 init];
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = objc_opt_self();
    v15 = [v14 fractionalWidthDimension:1.0];
    v16 = [v14 estimatedDimension:65.0];
    v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v18 = String._bridgeToObjectiveC()();

    v19 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v17 elementKind:v18 alignment:1];

    sub_10010FC20(&qword_101183990);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100EBC6C0;
    *(v20 + 32) = v19;
    sub_100009F78(0, &unk_1011913A0);
    v21 = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setBoundarySupplementaryItems:isa];

    v23 = *(v13 + 16);
    *(v13 + 16) = v21;

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 0u;
    *(v25 + 56) = 0u;
    *(v25 + 72) = sub_100219540;
    *(v25 + 80) = v8;
    *(v25 + 88) = v13;
    v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_100219568;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005A63A8;
    aBlock[3] = &unk_1010A16E0;
    v27 = _Block_copy(aBlock);

    v28 = [v26 initWithSectionProvider:v27 configuration:v12];

    _Block_release(v27);

LABEL_8:

    sub_100189E04(v28);

    goto LABEL_9;
  }
}

void sub_1001FF0F0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1001FC918();
    v5 = *&v3[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (a1)
    {
      v7 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
      v8 = v5;
      v9 = [v7 init];
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = objc_opt_self();
      v12 = [v11 fractionalWidthDimension:1.0];
      v13 = [v11 estimatedDimension:65.0];
      v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v15 = String._bridgeToObjectiveC()();

      v16 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:v15 alignment:1];

      sub_10010FC20(&qword_101183990);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100EBC6C0;
      *(v17 + 32) = v16;
      sub_100009F78(0, &unk_1011913A0);
      v18 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 setBoundarySupplementaryItems:isa];

      v20 = *(v10 + 16);
      *(v10 + 16) = v18;

      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 56) = 0u;
      *(v22 + 72) = sub_100219540;
      *(v22 + 80) = v6;
      *(v22 + 88) = v10;
      v23 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      aBlock[4] = sub_100219568;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005A63A8;
      aBlock[3] = &unk_1010A1690;
      v24 = _Block_copy(aBlock);

      v25 = [v23 initWithSectionProvider:v24 configuration:v9];

      _Block_release(v24);
    }

    else
    {
      v26 = v5;
      v25 = sub_10059B450(v26, 1, sub_100219540, v6);
    }

    sub_100189E04(v25);
  }
}

void sub_1001FF4E4()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v29[-v1];
  v3 = sub_10010FC20(&qword_101184718);
  __chkstk_darwin(v3 - 8);
  v5 = &v29[-v4];
  v6 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-v7];
  v9 = sub_10010FC20(&unk_101184720);
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController);
    RequestResponse.Revision.content.getter(v8);
    v15 = sub_10010FC20(&unk_101184700);
    if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
    {
      sub_1000095E8(v8, &unk_1011846E0);
      v16 = sub_10010FC20(&unk_10118F1E0);
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    }

    else
    {
      v17 = sub_10010FC20(&unk_10118F1E0);
      v18 = *(v17 - 8);
      (*(v18 + 16))(v11, v8, v17);
      sub_1000095E8(v8, &unk_101184700);
      (*(v18 + 56))(v11, 0, 1, v17);
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v19 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v19 - 8) + 48))(v2, 1, v19) == 1)
    {
      sub_1000095E8(v2, &unk_1011846C0);
      v20 = sub_10010FC20(&unk_101193AA0);
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    }

    else
    {
      v21 = sub_10010FC20(&unk_101193AA0);
      v22 = *(v21 - 8);
      (*(v22 + 16))(v5, v2, v21);
      sub_1000095E8(v2, &unk_10118D1E0);
      (*(v22 + 56))(v5, 0, 1, v21);
    }

    v23 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
    v30[3] = v23;
    v24 = sub_10001C8B8(v30);
    sub_10003D17C(v11, v24, &unk_101184720);
    sub_10003D17C(v5, v24 + *(v23 + 20), &qword_101184718);
    v25 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_10006B010(v30, v14 + v25, &unk_101183F30);
    swift_endAccess();
    v26 = sub_1001FC918();
    [v26 reloadData];

    v27 = sub_1001FFA80() || sub_1001FFC7C();
    v28 = v13[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent];
    v13[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] = v27;
    sub_10020980C(v28);
  }
}

BOOL sub_1001FFA80()
{
  v0 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_101184700);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846E0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_101184700);
    v9 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
    return !v9;
  }
}

BOOL sub_1001FFC7C()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846C0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D1E0);
    v9 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
    return !v9;
  }
}

void sub_1001FFE78()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v29[-v1];
  v3 = sub_10010FC20(&qword_101184718);
  __chkstk_darwin(v3 - 8);
  v5 = &v29[-v4];
  v6 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-v7];
  v9 = sub_10010FC20(&unk_101184720);
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController);
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v8);

    v15 = sub_10010FC20(&unk_101184700);
    if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
    {
      sub_1000095E8(v8, &unk_1011846E0);
      v16 = sub_10010FC20(&unk_10118F1E0);
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    }

    else
    {
      v17 = sub_10010FC20(&unk_10118F1E0);
      v18 = *(v17 - 8);
      (*(v18 + 16))(v11, v8, v17);
      sub_1000095E8(v8, &unk_101184700);
      (*(v18 + 56))(v11, 0, 1, v17);
    }

    RequestResponse.Revision.content.getter(v2);
    v19 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v19 - 8) + 48))(v2, 1, v19) == 1)
    {
      sub_1000095E8(v2, &unk_1011846C0);
      v20 = sub_10010FC20(&unk_101193AA0);
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    }

    else
    {
      v21 = sub_10010FC20(&unk_101193AA0);
      v22 = *(v21 - 8);
      (*(v22 + 16))(v5, v2, v21);
      sub_1000095E8(v2, &unk_10118D1E0);
      (*(v22 + 56))(v5, 0, 1, v21);
    }

    v23 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
    v30[3] = v23;
    v24 = sub_10001C8B8(v30);
    sub_10003D17C(v11, v24, &unk_101184720);
    sub_10003D17C(v5, v24 + *(v23 + 20), &qword_101184718);
    v25 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_10006B010(v30, v14 + v25, &unk_101183F30);
    swift_endAccess();
    v26 = sub_1001FC918();
    [v26 reloadData];

    v27 = sub_1001FFA80() || sub_1001FFC7C();
    v28 = v13[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent];
    v13[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] = v27;
    sub_10020980C(v28);
  }
}

void sub_100200420(uint64_t a1, unint64_t a2)
{
  v4 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6AlbumsVMa(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController);
    v32 = v4;
    v12 = Strong;

    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v31 = v13;
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = v6;
    v16 = a1;
    v17 = *(v11 + 48);
    v18 = *(*v17 + 96);
    swift_beginAccess();
    v19 = v17 + v18;
    a1 = v16;
    v6 = v15;
    sub_100217D58(v19, v9, _s6AlbumsVMa);
    v20 = &v9[*(v7 + 28)];

    v4 = v32;
    *v20 = v31;
    *(v20 + 1) = v14;
    sub_100378808(v9);
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = *(v21 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController);
    v23 = v21;

    if (a2)
    {
      v24 = a2;
    }

    else
    {
      a1 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = *(v22 + 48);
    v26 = *(*v25 + 96);
    swift_beginAccess();
    sub_100217D58(v25 + v26, v6, _s11MusicVideosVMa);
    v27 = &v6[*(v4 + 32)];

    *v27 = a1;
    *(v27 + 1) = v24;
    sub_100377E84(v6);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    [v28 setNeedsUpdateContentUnavailableConfiguration];
  }
}

void sub_1002006EC()
{
  v0 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-4] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s6AlbumsVMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-4] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = *(*&v7[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48);
    v10 = *(*v9 + 96);
    swift_beginAccess();
    sub_100217D58(v9 + v10, v5, _s6AlbumsVMa);
    sub_100288A9C();
    sub_100217EB4(v5, _s6AlbumsVMa);
    sub_100110448();
    sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, v15);

    v11 = v15[0];
    if ((v15[0] & 0xFF00) != 0x200)
    {
      v12 = *(*&v7[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController] + 48);
      v13 = *(*v12 + 96);
      swift_beginAccess();
      sub_100217D58(v12 + v13, v2, _s11MusicVideosVMa);
      sub_1006FCB18(v11 & 0x1FF);
      sub_100377E84(v2);
    }
  }
}

uint64_t sub_100200938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_100200BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_100200E44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10119F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumGridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10119F3B0);
  v10 = sub_10010FC20(&qword_101184578);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10119F3B0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10119F3B0);
  return swift_endAccess();
}

uint64_t sub_1002010BC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&qword_101192A50);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumListCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &qword_101192A50);
  v11 = sub_10010FC20(&qword_101184588);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &qword_101192A50);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &qword_101192A50);
  return swift_endAccess();
}

uint64_t sub_10020135C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011847E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoGridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011847E0);
  v10 = sub_10010FC20(&unk_101193A80);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011847E0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_1011847E0);
  return swift_endAccess();
}

uint64_t sub_1002015D4@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&qword_1011847E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoListCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &qword_1011847E8);
  v11 = sub_10010FC20(&unk_101193A90);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &qword_1011847E8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &qword_1011847E8);
  return swift_endAccess();
}

unint64_t sub_100201874(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181600);
  __chkstk_darwin(v2 - 8);
  v119 = v115 - v3;
  v4 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v4 - 8);
  v125 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101193AF0);
  v118 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v115 - v7;
  v9 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v9 - 8);
  v140 = v115 - v10;
  v11 = sub_10010FC20(&unk_101193AA0);
  v130 = *(v11 - 8);
  v131 = v11;
  __chkstk_darwin(v11);
  v129 = v115 - v12;
  v13 = type metadata accessor for MusicVideo();
  v138 = *(v13 - 8);
  v139 = v13;
  __chkstk_darwin(v13);
  v124 = v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v123 = v115 - v16;
  __chkstk_darwin(v17);
  v137 = v115 - v18;
  v19 = sub_10010FC20(&qword_1011815C0);
  __chkstk_darwin(v19 - 8);
  v21 = v115 - v20;
  v22 = _s6AlbumsVMa(0);
  __chkstk_darwin(v22 - 8);
  v122 = v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v24 - 8);
  v136 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v135 = v115 - v27;
  v28 = sub_10010FC20(&qword_1011846D8);
  v117 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v115 - v29;
  v31 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v31 - 8);
  v33 = v115 - v32;
  v34 = sub_10010FC20(&unk_10118F1E0);
  v127 = *(v34 - 8);
  v128 = v34;
  __chkstk_darwin(v34);
  v126 = v115 - v35;
  v36 = type metadata accessor for Album();
  v133 = *(v36 - 8);
  v134 = v36;
  __chkstk_darwin(v36);
  v121 = v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v120 = v115 - v39;
  __chkstk_darwin(v40);
  v132 = v115 - v41;
  v42 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v42 - 8);
  v44 = v115 - v43;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v46 = result;
  v115[1] = a1;
  v47 = IndexPath.section.getter();
  v48 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v48 - 8) + 56))(v44, 1, 1, v48);
  v49 = sub_1001FCF68(v47, v44);
  v50 = v46;
  sub_1000095E8(v44, &unk_1011846F0);
  if (v49 == 2)
  {
LABEL_3:

    return 0;
  }

  v116 = v46;
  if (v49)
  {
    v51 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController;
    v50 = v116;
    RequestResponse.Controller.revision.getter();
    v52 = v140;
    RequestResponse.Revision.content.getter(v140);

    v53 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
      sub_1000095E8(v52, &unk_1011846C0);
      goto LABEL_3;
    }

    v135 = v51;
    v57 = v129;
    v58 = v130;
    v59 = v131;
    (*(v130 + 16))(v129, v52, v131);
    sub_1000095E8(v52, &unk_10118D1E0);
    v60 = MusicLibrarySectionedResponse.sections.getter();
    (*(v58 + 8))(v57, v59);
    v141 = _swiftEmptyArrayStorage;
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = *(v118 + 16);
      v63 = *(v118 + 80);
      v140 = v60;
      v64 = v60 + ((v63 + 32) & ~v63);
      v65 = *(v118 + 72);
      v66 = (v118 + 8);
      v67 = v119;
      do
      {
        v62(v8, v64, v6);
        MusicLibrarySection.items.getter();
        (*v66)(v8, v6);
        sub_1001240F8(v67);
        v64 += v65;
        --v61;
      }

      while (v61);

      v68 = v141;
    }

    else
    {

      v68 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    v82 = v138;
    v81 = v139;
    v84 = v136;
    v83 = v137;
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v68 + 2))
      {
        v85 = *(v138 + 16);
        v86 = v123;
        v85(v123, &v68[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * result], v139);

        (*(v82 + 32))(v83, v86, v81);
        v87 = *(*&v135[v116] + 48);
        v88 = *(*v87 + 96);
        swift_beginAccess();
        v89 = v87 + v88;
        v90 = v125;
        sub_100217D58(v89, v125, _s11MusicVideosVMa);
        sub_1006FCD38(v84);
        sub_100217EB4(v90, _s11MusicVideosVMa);
        v91 = type metadata accessor for MusicPlaybackIntentDescriptor();
        v92 = *(v91 - 8);
        if ((*(v92 + 48))(v84, 1, v91) == 1)
        {
          sub_1000095E8(v84, &unk_10118CDB0);
          v93 = 0;
        }

        else
        {
          v93 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v92 + 8))(v84, v91);
        }

        v94 = sub_10079A5F8(v93);
        v95 = sub_100797240(&off_101099970, v94);

        v96 = v124;
        v85(v124, v83, v81);
        v97 = sub_10079C240(v95, v96);

        (*(v82 + 8))(v83, v81);
        return v97;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v54 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController;
  v55 = v116;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v33);

  v56 = sub_10010FC20(&unk_101184700);
  if ((*(*(v56 - 8) + 48))(v33, 1, v56) == 1)
  {
    sub_1000095E8(v33, &unk_1011846E0);

    return 0;
  }

  v140 = v54;
  v69 = v126;
  v70 = v127;
  v71 = v128;
  (*(v127 + 16))(v126, v33, v128);
  sub_1000095E8(v33, &unk_101184700);
  v72 = MusicLibrarySectionedResponse.sections.getter();
  (*(v70 + 8))(v69, v71);
  v73 = v72;
  v141 = _swiftEmptyArrayStorage;
  v74 = *(v72 + 16);
  if (v74)
  {
    v75 = *(v117 + 16);
    v76 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v139 = v73;
    v77 = v73 + v76;
    v78 = *(v117 + 72);
    v79 = (v117 + 8);
    do
    {
      v75(v30, v77, v28);
      MusicLibrarySection.items.getter();
      (*v79)(v30, v28);
      sub_100124960(v21);
      v77 += v78;
      --v74;
    }

    while (v74);

    v80 = v141;
  }

  else
  {

    v80 = _swiftEmptyArrayStorage;
  }

  result = IndexPath.item.getter();
  v99 = v134;
  v98 = v135;
  v101 = v132;
  v100 = v133;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (result >= *(v80 + 2))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v102 = *(v133 + 16);
  v103 = v120;
  v102(v120, &v80[((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * result], v134);

  (*(v100 + 32))(v101, v103, v99);
  v104 = *(*(v116 + v140) + 48);
  v105 = *(*v104 + 96);
  swift_beginAccess();
  v106 = v104 + v105;
  v107 = v122;
  sub_100217D58(v106, v122, _s6AlbumsVMa);
  sub_100288ABC(v98);
  sub_100217EB4(v107, _s6AlbumsVMa);
  v108 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v109 = *(v108 - 8);
  if ((*(v109 + 48))(v98, 1, v108) == 1)
  {
    sub_1000095E8(v98, &unk_10118CDB0);
    v110 = 0;
  }

  else
  {
    v110 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v109 + 8))(v98, v108);
  }

  v111 = sub_100799E1C(v110);
  v112 = sub_100797240(&off_101099948, v111);

  v113 = v121;
  v102(v121, v101, v99);
  v114 = sub_10079BA94(v112, v113);

  (*(v100 + 8))(v101, v99);
  return v114;
}