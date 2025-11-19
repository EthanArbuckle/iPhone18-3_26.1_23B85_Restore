uint64_t Playlist.Entry.supportsContainerNavigation(itemState:)()
{
  v0 = sub_10010FC20(&qword_1011A8E58);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for MusicVideo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A8E50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_1008FCD8C(&type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &Playlist.Entry.catalogID.getter, &v16 - v8);
  v10 = type metadata accessor for MusicPropertySource();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_1000095E8(v9, &qword_1011A8E50);
  if (v11 != 1)
  {
    Playlist.Entry.item.getter();
    v13 = type metadata accessor for Playlist.Entry.Item();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v2, 1, v13) == 1)
    {
      sub_1000095E8(v2, &qword_1011A8E58);
    }

    else
    {
      if ((*(v14 + 88))(v2, v13) == enum case for Playlist.Entry.Item.musicVideo(_:))
      {
        (*(v14 + 96))(v2, v13);
        (*(v4 + 32))(v6, v2, v3);
        v12 = sub_1008FD568();
        (*(v4 + 8))(v6, v3);
        return v12 & 1;
      }

      (*(v14 + 8))(v2, v13);
    }

    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

int *static Actions.GoToPlaylistFolderItem.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100902D40(a1, v10);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for Playlist.Folder.Item.folder(_:))
  {
    v11 = 29;
  }

  else
  {
    v11 = 28;
  }

  (*(v5 + 8))(v7, v4);
  sub_100903880(v10, a2, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
  result = sub_10010FC20(&qword_1011A8E60);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v13 = (a2 + result[10]);
  *v13 = sub_1008FE188;
  v13[1] = 0;
  v14 = (a2 + result[12]);
  *v14 = &unk_100EEEFE8;
  v14[1] = 0;
  v15 = (a2 + result[13]);
  *v15 = &unk_100EEEFF0;
  v15[1] = 0;
  return result;
}

uint64_t sub_1008FE1E4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB254;

  return v5();
}

uint64_t sub_1008FE300()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

int *Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_10003D17C(a7, v16 + v14, &qword_1011A8660);
  sub_100059A8C(a1, v16 + v15);
  v17 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v17 - 8) + 32))(a8, a2, v17);
  result = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  v19 = (a8 + result[5]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a8 + result[7]);
  *v21 = &unk_100EEF008;
  v21[1] = v16;
  return result;
}

uint64_t sub_1008FE58C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1008FE79C, 0, 0);
}

uint64_t sub_1008FE79C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 104);
    sub_100903880(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000954C(v7, v8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 264) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 272) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 280) = v12;
    *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    v14 = v7[3];
    sub_10000954C(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EE94C0;
    *(inited + 72) = 3;
    *(v0 + 296) = sub_1008AC260(inited);
    *(v0 + 304) = v16;
    *(v0 + 312) = v17;
    *(v0 + 328) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008FEAD4, v20, v19);
  }
}

uint64_t sub_1008FEAD4()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15365;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_1000089F8(v36 + v14[6], *(v0 + 200), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008D92E4, 0, 0);
}

uint64_t Actions.GoToPlaylistFolderItem.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (v4 + 16);
  if ((*(v11 + 88))(v14, v10) == enum case for Playlist.Folder.Item.folder(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v15)(v6, v9, v3);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v16 = qword_101219808;
    static Locale.current.getter();
    v17 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v22 = v4;
    String.LocalizationValue.init(stringLiteral:)();
    v18 = *v15;
    v23 = v3;
    v18(v6, v9, v3);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v19 = qword_101219808;
    static Locale.current.getter();
    v17 = String.init(localized:table:bundle:locale:comment:)();
    v4 = v22;
    v3 = v23;
  }

  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_1008FF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008FF974, 0, 0);
}

uint64_t sub_1008FF974()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100903880(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008FFC60, v18, v17);
  }
}

uint64_t sub_1008FFC60()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15109;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1009038EC, 0, 0);
}

uint64_t (*Actions.ShowSongCredits.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D04DC;
}

uint64_t sub_1009004D8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_1009006BC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D0A40;
}

__n128 sub_1009007A4@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a1;
  sub_1000089F8(&v16, &v15, &unk_1011ACB70);

  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  result = a1[2];
  v14 = a1[3];
  *(a6 + 32) = result;
  *(a6 + 48) = v14;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
  return result;
}

uint64_t sub_100900870(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10002F3F4;

  return v5();
}

uint64_t sub_10090099C@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 56);
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = *(a1 + 40);
  *(a6 + 56) = v8;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
}

uint64_t sub_100900A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a10 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  sub_10003D17C(a8, v21 + v18, &qword_1011A8660);
  result = (*(v19 + 32))(v21 + v20, a1, a10);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a13;
  a9[7] = v21;
  return result;
}

uint64_t sub_100900C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100900E2C, 0, 0);
}

uint64_t sub_100900E2C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100903880(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EC78D0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100901138, v18, v17);
  }
}

uint64_t sub_100901138()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14853;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000089F8(v36 + v14[6], *(v0 + 216), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008DADE0, 0, 0);
}

uint64_t sub_100901910()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100901B60()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100901E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_10003D17C(a6, v21 + v18, &qword_1011A8660);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a11;
  a9[5] = v21;
  return result;
}

uint64_t sub_100901F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1009021A8, 0, 0);
}

uint64_t sub_1009021A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100903880(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100902494, v18, v17);
  }
}

uint64_t sub_100902494()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 13061;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008E1600, 0, 0);
}

id sub_100902CA0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

uint64_t type metadata accessor for Actions.GoToPlaylistFolderItem.Context()
{
  result = qword_1011A8F60;
  if (!qword_1011A8F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100902D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100902DA4()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1008FE58C(v0 + v3, v0 + v4);
}

uint64_t sub_100902EB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008FF760(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100902FF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F3F4;

  return sub_100900C18(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100903140()
{
  v1 = *(v0 + 16);
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_100903400()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100901F94(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO14ViewFullLyricsO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

__n128 sub_100903738(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100903794()
{
  result = type metadata accessor for Playlist.Folder.Item();
  if (v1 <= 0x3F)
  {
    result = sub_10001F838();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100903880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Actions.OpenInClassical.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEF1F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEF200;
  *(a2 + 104) = 0;
}

uint64_t sub_1009039A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEF1F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEF200;
  *(a2 + 104) = 0;
}

uint64_t Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v67 = a3;
  v68 = a4;
  v65 = a2;
  v69 = type metadata accessor for Album();
  v5 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  __chkstk_darwin(v6);
  v63 = &v55 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_1011A8FB0);
  v61 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v62 = &v55 - v17;
  v18 = __chkstk_darwin(v16);
  v60 = &v55 - v19;
  v70 = v20;
  __chkstk_darwin(v18);
  v22 = (&v55 - v21);
  v23 = a1;
  v24 = Album.catalogID.getter();
  if (v25)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v24, v25, v12);

    (*(v10 + 32))(v22, v12, v9);
  }

  else
  {
    sub_100904034();
    v26 = swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 2;
    swift_willThrow();
    *v22 = v26;
  }

  swift_storeEnumTagMultiPayload();
  v28 = *(v5 + 16);
  v29 = v63;
  v58 = v23;
  v30 = v69;
  v28(v63, v23, v69);
  v31 = v60;
  sub_1000089F8(v22, v60, &qword_1011A8FB0);
  v32 = *(v5 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = *(v61 + 80);
  v35 = v70;
  v36 = (v71 + v34 + v33) & ~v34;
  v55 = v34 | 7;
  v59 = v34 | 7 | v32;
  v37 = swift_allocObject();
  v56 = *(v5 + 32);
  v57 = v5 + 32;
  v38 = v37 + v33;
  v39 = v37;
  v61 = v37;
  v56(v38, v29, v30);
  sub_10003D17C(v31, v39 + v36, &qword_1011A8FB0);
  v40 = v62;
  sub_1000089F8(v22, v62, &qword_1011A8FB0);
  v41 = (v34 + 16) & ~v34;
  v42 = swift_allocObject();
  sub_10003D17C(v40, v42 + v41, &qword_1011A8FB0);
  sub_10012B828(v65, v42 + ((v35 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  v43 = v64;
  sub_10003D17C(v22, v64, &qword_1011A8FB0);
  v44 = v66;
  v45 = v69;
  v46 = v56;
  v56(v66, v58, v69);
  v47 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v48 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v49 = (*(v47 + 64) + v34 + v48) & ~v34;
  v50 = (v70 + v32 + v49) & ~v32;
  v51 = swift_allocObject();
  sub_10003D17C(v67, v51 + v48, &qword_1011A8660);
  sub_10003D17C(v43, v51 + v49, &qword_1011A8FB0);
  result = v46(v51 + v50, v44, v45);
  v53 = v68;
  v54 = v61;
  *v68 = sub_100904218;
  v53[1] = v54;
  v53[2] = &unk_100EEF218;
  v53[3] = v42;
  v53[4] = &unk_100EEF228;
  v53[5] = v51;
  return result;
}

unint64_t sub_100904034()
{
  result = qword_1011AFCB0;
  if (!qword_1011AFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFCB0);
  }

  return result;
}

unint64_t sub_100904088(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_1011A8FB0);
  __chkstk_darwin(v3);
  v5 = (v10 - v4);
  if ((Album.isClassicalExperienceAvailable.getter() & 1) == 0)
  {
    return 0xD000000000000021;
  }

  sub_1000089F8(a2, v5, &qword_1011A8FB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v7._countAndFlagsBits = 0xD000000000000028;
    v7._object = 0x8000000100E5B630;
    String.append(_:)(v7);
    v10[1] = v6;
    sub_10010FC20(&qword_1011AB640);
    _print_unlocked<A, B>(_:_:)();
    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    return v11;
  }

  else
  {
    sub_1000095E8(v5, &qword_1011A8FB0);
    return 0;
  }
}

unint64_t sub_100904218()
{
  v1 = *(type metadata accessor for Album() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10010FC20(&qword_1011A8FB0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100904088(v0 + v2, v5);
}

uint64_t sub_1009042F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_10010FC20(&qword_1011A8FB0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_100904420, v5, v4);
}

uint64_t sub_100904420()
{
  sub_1000089F8(v0[2], v0[5], &qword_1011A8FB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[5];

    sub_1000095E8(v1, &qword_1011A8FB0);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[12] = Strong;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1009045A0;
    v6 = v0[8];

    return (sub_100AE2628)(v6, Strong);
  }
}

uint64_t sub_1009045A0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100904790;
  }

  else
  {
    v6 = sub_1009046F4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1009046F4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100904790()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10090482C()
{
  v2 = *(sub_10010FC20(&qword_1011A8FB0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002F3F4;

  return sub_1009042F0(v0 + v3, v0 + v4);
}

uint64_t sub_100904938(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = sub_10010FC20(&qword_1011A8FB0);
  v2[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100904B84, 0, 0);
}

uint64_t sub_100904B84()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  sub_1000089F8(*(v0 + 112), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 256), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 120);
    sub_1008D08BC(*(v0 + 256), *(v0 + 280), type metadata accessor for Actions.MetricsReportingContext);
    sub_1000089F8(v7, v6, &qword_1011A8FB0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000095E8(*(v0 + 224), &qword_1011A8FB0);
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }

    else
    {
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v9, v10, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
    }

    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(v0 + 104) = type metadata accessor for Album();
    sub_10010FC20(&qword_1011A8040);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_1005442F0(1);
    v18 = Substring.lowercased()();

    v19 = sub_1008AC654(1uLL, v15, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v18;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v26;
    *(v0 + 304) = v27;
    *(v0 + 320) = v28;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v30 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100904FF4, v30, v29);
  }
}

uint64_t sub_100904FF4()
{
  v80 = *(v0 + 320);
  v78 = *(v0 + 304);
  v75 = *(v0 + 288);
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v74 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = 0xD000000000000014;
  *(v6 + 8) = 0x8000000100E4E350;
  *(v6 + 16) = 7173;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  v76 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v77 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v75;
  *(v14 + 16) = v78;
  *(v14 + 24) = v80;
  sub_1000089F8(v7, v74, &qword_1011A7F08);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v15 - 1) + 48);
  v16 = v79(v74, 1, v15);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 176);
  if (v16 == 1)
  {

    sub_100633490(v77, v76);

    sub_1005EA59C(v20, v18, v19, v17, SBYTE1(v17));
    sub_1000095E8(v21, &qword_1011A7F08);
    v22 = v11;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v11;
    v23 = *v21;
    v24 = v21[1];

    sub_100633490(v77, v76);

    sub_1005EA59C(v20, v18, v19, v17, SBYTE1(v17));

    sub_1008D9B58(v21, type metadata accessor for MetricsEvent.Page);
    v22 = v25;
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v28 = v23;
  v28[1] = v24;
  sub_1000089F8(v26, v27, &qword_1011A7F08);
  v29 = v79(v27, 1, v15);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    sub_1008D9B58(v30, type metadata accessor for MetricsEvent.Page);
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v35 = v31;
  v35[1] = v32;
  sub_1000089F8(v33, v34, &qword_1011A7F08);
  v36 = v79(v34, 1, v15);
  v37 = *(v0 + 232);
  v38 = *(v0 + 160);
  if (v36 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    sub_1000089F8(v38 + v15[6], *(v0 + 232), &qword_1011A77F0);
    sub_1008D9B58(v38, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 184);
  v41 = *(v0 + 152);
  sub_10003D17C(*(v0 + 232), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0);
  sub_1000089F8(v40, v41, &qword_1011A7F08);
  v42 = v79(v41, 1, v15);
  v43 = *(v0 + 152);
  if (v42 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_1008D9B58(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v44;
  sub_1000089F8(v45, v46, &qword_1011A7F08);
  v47 = v79(v46, 1, v15);
  v48 = *(v0 + 144);
  if (v47 == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_1008D9B58(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v49;
  sub_1000089F8(v50, v51, &qword_1011A7F08);
  v52 = v79(v51, 1, v15);
  v53 = *(v0 + 136);
  if (v52 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_1008D9B58(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_10003D17C(v57, v58, &qword_1011A7F08);
  v60 = v79(v58, 1, v15);
  v61 = *(v0 + 128);
  if (v60 == 1)
  {
    sub_1000095E8(v61, &qword_1011A7F08);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_1008D9B58(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 192);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v22;
  sub_1008D08BC(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 296);
  v66 = *(v0 + 304);
  v68 = *(v0 + 280);
  v69 = *(v0 + 288);
  v70 = *(v0 + 264);
  v71 = *(v0 + 208);
  v72 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v70 + 24)), *(v68 + *(v70 + 24) + 8), *(v68 + *(v70 + 36)), *(v68 + *(v70 + 36) + 8), *(v68 + *(v70 + 36) + 16));
  sub_100344B1C(v69, v67, v66, v72, SBYTE1(v72));
  sub_1008D9B58(v71, type metadata accessor for MetricsEvent.Click);

  return _swift_task_switch(sub_1009057C8, 0, 0);
}

uint64_t sub_1009057C8()
{
  v1 = v0[35];
  sub_1000095E8(v0[31], &qword_1011A77F0);
  sub_1008D9B58(v1, type metadata accessor for Actions.MetricsReportingContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100905928()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_10010FC20(&qword_1011A8FB0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  type metadata accessor for Album();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100904938(v0 + v3, v0 + v6);
}

uint64_t (*Actions.OpenInClassical.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_1008D04DC;
}

uint64_t (*sub_100905B78())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_1008D0A40;
}

uint64_t _s9MusicCore7ActionsO15OpenInClassicalO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t static Actions.ReportConcern.action(context:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_100905ECC;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100EEF2A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100EEF2A8;
  *(a2 + 112) = 0;
}

uint64_t sub_100905EF4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10002F3F4;

  return v5();
}

uint64_t sub_100905FDC(uint64_t a1)
{
  v4 = (*(a1 + 40) + **(a1 + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

uint64_t sub_1009060C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v5 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_100905ECC;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100EEF2A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100EEF2A8;
  *(a2 + 112) = 0;
}

uint64_t (*Actions.ReportConcern.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000100E40B00;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000100E40B00;
  return sub_1008D04DC;
}

uint64_t (*sub_100906220())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000100E40B00;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000100E40B00;
  return sub_1008D0A40;
}

uint64_t Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  result = sub_10003D17C(a11, v19 + v17, &qword_1011A8660);
  v21 = (v19 + v18);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a3;
  v22[1] = a4;
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + 40) = &unk_100EEF2B8;
  *(a9 + 48) = v19;
  return result;
}

uint64_t sub_100906418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_10010FC20(&qword_1011A7F08);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for MetricsEvent.Click(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100906630, 0, 0);
}

uint64_t sub_100906630()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 248), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    sub_1008D08BC(*(v0 + 248), *(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);
    v9 = type metadata accessor for URL();
    *(v0 + 280) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 288) = v11;
    *(v0 + 296) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EE94D0;
    *(inited + 72) = 3;

    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v13;
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100906924, v17, v16);
  }
}

uint64_t sub_100906924()
{
  v80 = *(v0 + 336);
  v79 = *(v0 + 320);
  v77 = *(v0 + 304);
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v74 = *(v0 + 112);
  v72 = *(v0 + 184);
  v73 = *(v0 + 104);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v10 = *v1;
  v9 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v76 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v73;
  *(v6 + 8) = v74;
  *(v6 + 16) = 10501;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  v75 = v9;
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  *v12 = v10;
  v12[1] = v9;
  v13 = v6 + v5[10];
  *v13 = v77;
  *(v13 + 16) = v79;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v78 = type metadata accessor for MetricsEvent.Page(0);
  v81 = *(*(v78 - 1) + 48);
  v14 = v81(v72, 1);
  v15 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);
  v19 = *(v0 + 184);
  if (v14 == 1)
  {

    sub_100633490(v10, v9);
    v20 = v76;

    sub_1005EA59C(v18, v17, v16, v15, SBYTE1(v15));
    sub_1000095E8(v19, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v22 = v19[1];

    sub_100633490(v10, v75);
    v20 = v76;

    sub_1005EA59C(v18, v17, v16, v15, SBYTE1(v15));

    sub_1008D9B58(v19, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = (*(v0 + 208) + *(*(v0 + 200) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = (v81)(v24, 1, v78);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 176), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 208) + *(*(v0 + 200) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if ((v81)(v31, 1, v78) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 168);
    sub_1000089F8(v36 + v78[6], *(v0 + 224), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 160);
  sub_10003D17C(*(v0 + 224), *(v0 + 208) + *(*(v0 + 200) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = (v81)(v38, 1, v78);
  v40 = *(v0 + 160);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v78[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 152);
  *(*(v0 + 208) + *(*(v0 + 200) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = (v81)(v43, 1, v78);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v78[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 144);
  *(*(v0 + 208) + *(*(v0 + 200) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = (v81)(v48, 1, v78);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v78[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 192);
  v55 = *(v0 + 136);
  v56 = (*(v0 + 208) + *(*(v0 + 200) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = (v81)(v55, 1, v78);
  v58 = *(v0 + 136);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v78[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v20;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 272);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);
  v69 = *(v0 + 216);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1009070FC, 0, 0);
}

uint64_t sub_1009070FC()
{
  sub_1008D9B58(*(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13ReportConcernO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100907414()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10002F3F4;

  return sub_100906418(v0 + v3, v7, v8, v9, v10);
}

uint64_t Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v92 = a7;
  v88 = a5;
  v86 = a4;
  v90 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v87 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = type metadata accessor for Actions.PlaybackContext();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17 - 8);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v20;
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v89 = a2;
  if (a2 != 3)
  {
    goto LABEL_19;
  }

  v23 = v16;
  v24 = *a3;
  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v24 + v25))
  {
    v82 = v18;
    v80 = v22;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v26 = v93;
    v16 = v23;
    if (v93)
    {
      v27 = [v93 tracklist];

      v28 = [v27 insertCommand];
      v18 = v82;
      if (!v28 || (v29 = [v28 insertAfterLastSection], swift_unknownObjectRelease(), !v29))
      {
LABEL_12:
        v83 = 0;
        v84 = 0;
        v22 = v80;
        goto LABEL_20;
      }

      v30 = [v29 section];
      swift_unknownObjectRelease();
      v31 = [v30 metadataObject];

      if (v31)
      {
        v32 = [v31 flattenedGenericObject];

        v18 = v82;
        if (v32)
        {
          v33 = [v32 anyObject];

          if (v33)
          {
            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            v22 = v80;
            if (v34)
            {
              v35 = [v34 title];
            }

            else
            {
              objc_opt_self();
              v36 = swift_dynamicCastObjCClass();
              if (!v36)
              {
LABEL_18:

LABEL_19:
                v83 = 0;
                v84 = 0;
                goto LABEL_20;
              }

              v35 = [v36 name];
            }

            v37 = v35;
            if (v37)
            {
              v38 = v37;
              v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v40;
              v84 = v39;

              v22 = v80;
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }
    }

    v83 = 0;
    v84 = 0;
    v22 = v80;
    v18 = v82;
    goto LABEL_20;
  }

  v83 = 0;
  v84 = 0;
  v16 = v23;
LABEL_20:
  v41 = v13;
  v78 = type metadata accessor for Actions.PlaybackContext;
  sub_100916AD8(a3, v22, type metadata accessor for Actions.PlaybackContext);
  (*(v12 + 16))(v16, a1, a6);
  v42 = a6;
  v43 = *(v18 + 80);
  v79 = a1;
  v44 = (v43 + 32) & ~v43;
  v77 = v43 | 7;
  v45 = v12;
  v46 = *(v12 + 80);
  v47 = a3;
  v81 = a3;
  v48 = (v91 + v46 + v44) & ~v46;
  v80 = (v41 + 7);
  v49 = (v41 + 7 + v48) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v75 = v42;
  v51 = v92;
  *(v50 + 16) = v42;
  *(v50 + 24) = v51;
  v74 = type metadata accessor for Actions.PlaybackContext;
  v52 = v50 + v44;
  v53 = v50;
  sub_100916C20(v22, v52, type metadata accessor for Actions.PlaybackContext);
  v76 = *(v45 + 32);
  v54 = v53 + v48;
  v55 = v53;
  v82 = v53;
  v76(v54, v16, v42);
  v56 = v89;
  *(v55 + v49) = v89;
  v57 = v85;
  sub_100916AD8(v47, v85, v78);
  v58 = (v43 + 16) & ~v43;
  v59 = (v91 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  sub_100916C20(v57, v60 + v58, v74);
  *(v60 + v59) = v56;
  sub_10012B828(v86, v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v61 = v87;
  v62 = v75;
  v63 = v76;
  v76(v87, v79, v75);
  v64 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = (*(v64 + 64) + v46 + v65) & ~v46;
  v67 = &v80[v66] & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v92;
  *(v68 + 16) = v62;
  *(v68 + 24) = v69;
  sub_10003D17C(v88, v68 + v65, &qword_1011A8660);
  v63(v68 + v66, v61, v62);
  *(v68 + v67) = v56;
  sub_1001DFD48(v56);
  sub_1001DFD48(v56);
  sub_1001DFD48(v56);
  result = sub_100916C88(v81, type metadata accessor for Actions.PlaybackContext);
  v71 = v90;
  v72 = v83;
  v73 = v84;
  *v90 = v56;
  v71[1] = v73;
  v71[2] = v72;
  v71[3] = sub_100913894;
  v71[4] = v82;
  v71[5] = &unk_100EEF380;
  v71[6] = v60;
  v71[7] = &unk_100EEF390;
  v71[8] = v68;
  return result;
}

__n128 static Actions.Queue.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10091509C(a1, v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_10003D17C(a6, v21 + v18, &qword_1011A8660);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = &unk_100EEE1E8;
  a9[3] = v16;
  a9[4] = &unk_100EEF3A0;
  a9[5] = v21;
  return result;
}

uint64_t sub_100907E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100908090, 0, 0);
}

uint64_t sub_100908090()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100916C20(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10090837C, v18, v17);
  }
}

uint64_t sub_10090837C()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15621;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_100916C88(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_100916C88(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_100916C88(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_100916C88(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_100916C88(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_100916C88(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_100916C88(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100916C20(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_100916C88(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_100908B30, 0, 0);
}

uint64_t sub_100908B30()
{
  sub_100916C88(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Preview.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D04DC;
}

uint64_t (*sub_100908D98())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D0A40;
}

uint64_t Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011A8FF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for GenericMusicItem();
  *&v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v17 + v18))
  {
    sub_1000095E8(a3, &qword_1011A8660);
    v28 = a2;
    goto LABEL_9;
  }

  *&v41 = a3;
  *&v42 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v19 = v46;
  if (!v46 || (v20 = [v46 tracklist], v19, v21 = objc_msgSend(v20, "playingItem"), v20, !v21) || (v22 = objc_msgSend(v21, "metadataObject"), v21, !v22))
  {

    sub_1000095E8(v41, &qword_1011A8660);
    v28 = v42;
LABEL_9:
    sub_10012BA6C(v28);
    result = sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
    goto LABEL_10;
  }

  v23 = [v22 innermostModelObject];

  v24 = v23;
  GenericMusicItem.init(_:)();
  v25 = v40;
  if ((*(v40 + 48))(v13, 1, v14) == 1)
  {

    sub_1000095E8(v41, &qword_1011A8660);
    sub_10012BA6C(v42);
    sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &qword_1011A8FF8;
    v27 = v13;
  }

  else
  {
    (*(v25 + 32))(v16, v13, v14);
    sub_10090941C(v16, &v46);

    (*(v25 + 8))(v16, v14);
    if (*(&v47 + 1))
    {
      sub_100059A8C(&v46, v43);
      v33 = v44;
      v34 = v45;
      v35 = sub_10000954C(v43, v44);
      v36 = __chkstk_darwin(v35);
      v38 = &v40 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38, v36);
      sub_100916AD8(a1, v10, type metadata accessor for Actions.PlaybackContext);
      Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v38, v10, v42, v41, v33, v34, &v46);
      v41 = v47;
      v42 = v46;
      v40 = v48;
      sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
      result = sub_10000959C(v43);
      v32 = v40;
      v31 = v41;
      v30 = v42;
      goto LABEL_11;
    }

    sub_1000095E8(v41, &qword_1011A8660);
    sub_10012BA6C(v42);
    sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &qword_1011ACCA0;
    v27 = &v46;
  }

  result = sub_1000095E8(v27, v26);
LABEL_10:
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
LABEL_11:
  *a4 = v30;
  a4[1] = v31;
  a4[2] = v32;
  return result;
}

uint64_t sub_10090941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v12 + 96))(v15, v11);
    v17 = *(v5 + 32);
    v17(v7, v15, v4);
    *(a2 + 24) = v4;
    *(a2 + 32) = &protocol witness table for Artist;
    v18 = sub_10001C8B8(a2);
    return (v17)(v18, v7, v4);
  }

  else if (v16 == enum case for GenericMusicItem.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    v20 = *(v23 + 32);
    v20(v10, v15, v8);
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for Song;
    v21 = sub_10001C8B8(a2);
    return (v20)(v21, v10, v8);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v75 = a4;
  v76 = a6;
  v69 = a3;
  v70 = a7;
  v62 = a2;
  v71 = a1;
  v10 = sub_10010FC20(&qword_1011A8660);
  v66 = *(v10 - 8);
  v74 = *(v66 + 64);
  v11 = __chkstk_darwin(v10 - 8);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v57 - v14;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v64 = &v57 - v19;
  __chkstk_darwin(v18);
  v21 = &v57 - v20;
  v57 = &v57 - v20;
  v22 = type metadata accessor for Actions.PlaybackContext();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22 - 8);
  v72 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  sub_100916AD8(a2, &v57 - v26, type metadata accessor for Actions.PlaybackContext);
  v77 = v15;
  v59 = *(v15 + 16);
  v59(v21, a1, a5);
  v28 = *(v23 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = *(v15 + 80);
  v31 = (v24 + v30 + v29) & ~v30;
  v61 = v30 | v28 | 7;
  v63 = v16;
  v32 = swift_allocObject();
  v33 = v76;
  *(v32 + 16) = a5;
  *(v32 + 24) = v33;
  v34 = v32 + v29;
  v35 = v32;
  v65 = v32;
  v58 = type metadata accessor for Actions.PlaybackContext;
  sub_100916C20(v27, v34, type metadata accessor for Actions.PlaybackContext);
  v60 = *(v77 + 32);
  v77 += 32;
  v60(v35 + v31, v57, a5);
  v36 = v64;
  v59(v64, v71, a5);
  sub_100916C20(v62, v72, type metadata accessor for Actions.PlaybackContext);
  sub_1000089F8(v75, v73, &qword_1011A8660);
  v37 = (v30 + 32) & ~v30;
  v38 = (v16 + v28 + v37) & ~v28;
  v39 = *(v66 + 80);
  v40 = (v38 + v24 + v39) & ~v39;
  v41 = (v74 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 16) = a5;
  *(v42 + 24) = v43;
  v44 = v36;
  v45 = a5;
  v46 = a5;
  v47 = v60;
  v60(v42 + v37, v44, v45);
  sub_100916C20(v72, v42 + v38, v58);
  sub_10003D17C(v73, v42 + v40, &qword_1011A8660);
  sub_10012B828(v69, v42 + v41);
  v48 = v68;
  sub_10003D17C(v75, v68, &qword_1011A8660);
  v49 = v67;
  v47(v67, v71, v46);
  v50 = (v39 + 32) & ~v39;
  v51 = (v74 + v30 + v50) & ~v30;
  v52 = swift_allocObject();
  v53 = v76;
  *(v52 + 16) = v46;
  *(v52 + 24) = v53;
  sub_10003D17C(v48, v52 + v50, &qword_1011A8660);
  result = (v47)(v52 + v51, v49, v46);
  v55 = v70;
  v56 = v65;
  *v70 = sub_100915340;
  v55[1] = v56;
  v55[2] = &unk_100EEF3D8;
  v55[3] = v42;
  v55[4] = &unk_100EEF3E8;
  v55[5] = v52;
  return result;
}

unint64_t sub_100909C4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v53 = type metadata accessor for Artist();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Song();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = __chkstk_darwin(v9);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v56 = &v48 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = *(a3 - 8);
  v18 = __chkstk_darwin(v14);
  v59 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24)
  {
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v30._countAndFlagsBits = 0xD000000000000020;
    v30._object = 0x8000000100E5B6F0;
    String.append(_:)(v30);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return v68;
  }

  v49 = v7;
  v25 = *(v17 + 16);
  v25(v21, a2, a3);

  sub_10010FC20(&qword_1011A7F28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v70 = 0;
    v68 = 0u;
    v69 = 0u;
    sub_1000095E8(&v68, &unk_1011AD930);
LABEL_11:

    v32 = 13;
    return v32 | 0xD000000000000010;
  }

  v48 = v17;
  sub_100059A8C(&v68, v76);
  v26 = v77;
  v27 = v78;
  sub_10000954C(v76, v77);
  (*(v27 + 8))(v26, v27);
  if (!v28)
  {
    sub_10000959C(v76);
    goto LABEL_11;
  }

  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v72 = v64;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  if (v66 > 1u)
  {
    v29 = v48;
    if (v66 == 2)
    {

      goto LABEL_16;
    }
  }

  else
  {
    v29 = v48;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {

    sub_100014984(&v68);
    sub_10000959C(v76);
    v32 = 5;
    return v32 | 0xD000000000000010;
  }

LABEL_16:
  if (sub_10048BBDC(4, v70))
  {
    if (BYTE1(v68) == 1)
    {
      v34 = v59;
      v25(v59, a2, a3);
      v35 = v58;
      if (swift_dynamicCast())
      {
        v36 = v56;
        v37 = v57;
        (*(v57 + 32))(v56, v16, v35);
        v38 = MPCPlaybackEngine.state<A>(for:)();
        v39 = *(v37 + 16);
        v40 = v51;
        v39(v51, v36, v35);
        sub_10010FC20(&qword_1011A90C0);
        swift_allocObject();

        sub_100915730(v40, v38, v24);

        __chkstk_darwin(v41);
        *(&v48 - 2) = v35;
        *(&v48 - 1) = &protocol witness table for Song;
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v48 - 2) = v35;
        *(&v48 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        v43 = v54;
        static Published.subscript.getter();

        v44 = sub_10090A57C();

        sub_100014984(&v68);
        (*(v55 + 8))(v43, v49);
        (*(v57 + 8))(v56, v35);
        (*(v29 + 8))(v34, a3);
        sub_10000959C(v76);
        return v44;
      }

      else
      {
        v46 = v52;
        v45 = v53;
        v47 = swift_dynamicCast();

        sub_100014984(&v68);
        if (v47)
        {
          (*(v50 + 8))(v46, v45);
          (*(v29 + 8))(v34, a3);
          sub_10000959C(v76);
          return 0;
        }

        else
        {
          (*(v29 + 8))(v34, a3);
          sub_10000959C(v76);
          return 0xD000000000000010;
        }
      }
    }

    else
    {

      sub_100014984(&v68);
      sub_10000959C(v76);
      return 0xD000000000000017;
    }
  }

  else
  {

    sub_100014984(&v68);
    sub_10000959C(v76);
    return 0xD000000000000016;
  }
}

uint64_t sub_10090A57C()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v11 = v17;
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    return 0;
  }

  else
  {
    if (qword_1011A6748 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, static Logger.actions);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown playability status", v15, 2u);
    }

    v17 = 0;
    v18 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v11 = v17;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_10090A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[60] = a4;
  v5[61] = a5;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  sub_10010FC20(&qword_1011A90A8);
  v5[70] = swift_task_alloc();
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = type metadata accessor for Notice.Variant(0);
  v5[76] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  sub_10010FC20(&qword_1011A88A0);
  v5[81] = swift_task_alloc();
  v5[82] = *(a5 - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v5[85] = v8;
  v5[86] = *(v8 - 8);
  v5[87] = swift_task_alloc();

  return _swift_task_switch(sub_10090ABD8, 0, 0);
}

uint64_t sub_10090ABD8()
{
  v1 = *(v0 + 688);
  v2 = *(*(v0 + 656) + 16);
  v2(*(v0 + 672), *(v0 + 456), *(v0 + 488));
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if ((v3 & 1) == 0)
  {
    v16 = *(v0 + 648);
    v4(v16, 1, 1, *(v0 + 680));
    sub_1000095E8(v16, &qword_1011A88A0);
    goto LABEL_9;
  }

  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 648);
  v9 = *(v0 + 464);
  v4(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  v10 = *v9;
  v11 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v10 + v11))
  {
    goto LABEL_8;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v12 = *(v0 + 440);
  v13 = *(v0 + 696);
  if (!v12)
  {
LABEL_6:
    (*(*(v0 + 688) + 8))(v13, *(v0 + 680));
    goto LABEL_9;
  }

  MPCPlayerResponse.playState(for:)();
  v15 = v14;

  if (v15)
  {
LABEL_5:
    v13 = *(v0 + 696);
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(v10 + v11))
  {
LABEL_8:
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v30 = *(v0 + 448);
  if (!v30)
  {
    goto LABEL_5;
  }

  v31 = [*(v0 + 448) tracklist];

  v32 = [v31 playingItem];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = [v32 metadataObject];

  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = [v33 innermostModelObject];
  *(v0 + 704) = v34;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v87 = *(v0 + 696);
    v88 = *(v0 + 688);
    v89 = *(v0 + 680);

    (*(v88 + 8))(v87, v89);
    goto LABEL_9;
  }

  v36 = [objc_opt_self() radioPlaybackIntentFromSong:v35];
  *(v0 + 712) = v36;
  if (!v36)
  {
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));

LABEL_9:
    v2(*(v0 + 664), *(v0 + 456), *(v0 + 488));
    sub_10010FC20(&qword_1011A90B0);
    if (swift_dynamicCast())
    {
      sub_100059A8C((v0 + 56), v0 + 16);
      sub_100008FE4(v0 + 16, v0 + 96);
      MusicPlaybackIntentDescriptor.init(stationSeed:)();
      v19 = *(v0 + 592);
      v20 = *(v0 + 576);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v26 = *(v0 + 464);
      (*(v20 + 56))(v22, 0, 1, v21);
      v95 = *(v20 + 32);
      v95(v19, v22, v21);
      (*(v20 + 16))(v25, v19, v21);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for Actions.PlaybackContext();
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      sub_1000089F8(v26 + *(v27 + 28), v0 + 176, &qword_1011A8658);
      v28 = v23 + v24[7];
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      v29 = v23 + v24[8];
      *(v29 + 32) = 0;
      *v29 = 0u;
      *(v29 + 16) = 0u;
      *(v23 + v24[9]) = 0;
      *(v23 + v24[10]) = 0;
      *(v23 + v24[11]) = 0;
      sub_100916AD8(v25, v23, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_100916B40(v0 + 136, v28);
      *(v23 + v24[5]) = 2;
      *(v23 + v24[6]) = 1;
      sub_1000089F8(v0 + 176, v0 + 256, &qword_1011A8658);
      if (*(v0 + 280))
      {
        sub_100059A8C((v0 + 256), v0 + 216);
      }

      else
      {
        *(v0 + 424) = 0;
        sub_10010FC20(&qword_1011A9098);
        v51 = String.init<A>(reflecting:)();
        *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        if (*(v0 + 280))
        {
          sub_1000095E8(v0 + 256, &qword_1011A8658);
        }
      }

      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 464);
      sub_100916BB0(v0 + 216, v29);
      sub_1000095E8(v0 + 176, &qword_1011A8658);
      sub_1000095E8(v0 + 136, &qword_1011ACCA0);
      sub_100916C88(v55, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_100916C20(v54, v53, type metadata accessor for PlaybackIntentDescriptor);
      v58 = (v57 + *(v27 + 24));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      sub_100916AD8(v53, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v95(v63, *(v0 + 520), v65);
        sub_100344C3C(v59, v60, v61, v62);
        v66 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        sub_100A565C4(v59, v60, v61, v62);
        sub_100344C88(v59, v60, v61, v62);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = **(v0 + 520);
        sub_100344C3C(v59, v60, v61, v62);
        sub_100A565C4(v59, v60, v61, v62);
        sub_100344C88(v59, v60, v61, v62);
      }

      sub_100916AD8(*(v0 + 552), *(v0 + 512), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *(v0 + 584);
        v69 = *(v0 + 576);
        v70 = *(v0 + 568);
        v95(v68, *(v0 + 512), v70);
        v71 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = **(v0 + 512);
      }

      v72 = *(v0 + 632);
      sub_1000089F8(*(v0 + 472), v72, &qword_1011A8660);
      v73 = type metadata accessor for Actions.MetricsReportingContext();
      v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
      v75 = *(v0 + 632);
      if (v74 == 1)
      {
        sub_1000095E8(*(v0 + 632), &qword_1011A8660);
        v76 = 0;
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
        sub_100633490(*v75, v78);
        sub_100916C88(v75, type metadata accessor for Actions.MetricsReportingContext);
        if (v78 == 12)
        {
          v76 = 0;
        }

        else
        {
          MetricsEvent.Click.ActionContext.rawValue.getter(v77, v78);
          sub_1008A7ED4(v77, v78);
          v76 = String._bridgeToObjectiveC()();
        }
      }

      v79 = *(v0 + 552);
      v80 = *(v0 + 504);
      [v71 setPlayActivityFeatureName:v76];

      sub_100916AD8(v79, v80, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v95(v81, *(v0 + 504), v83);
        v84 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v82 + 8))(v81, v83);
      }

      else
      {
        v84 = **(v0 + 504);
      }

      [v84 setPlayActivityRecommendationData:0];

      v85 = swift_task_alloc();
      *(v0 + 744) = v85;
      *v85 = v0;
      v85[1] = sub_10090BF10;
      v86 = *(v0 + 552);

      return PlaybackController.add(_:route:)(v86, 0);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_1000095E8(v0 + 56, &qword_1011A90B8);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  v37 = v36;
  v38 = *(v0 + 640);
  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  v41 = type metadata accessor for Actions.PlaybackContext();
  v42 = (v40 + *(v41 + 24));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  sub_100344C3C(*v42, v44, v45, v46);
  sub_100A565C4(v43, v44, v45, v46);
  sub_100344C88(v43, v44, v45, v46);
  sub_1000089F8(v39, v38, &qword_1011A8660);
  v47 = type metadata accessor for Actions.MetricsReportingContext();
  v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
  v49 = *(v0 + 640);
  if (v48 == 1)
  {
    sub_1000095E8(*(v0 + 640), &qword_1011A8660);
    v50 = 0;
  }

  else
  {
    v90 = *v49;
    v91 = v49[1];
    sub_100633490(*v49, v91);
    sub_100916C88(v49, type metadata accessor for Actions.MetricsReportingContext);
    if (v91 == 12)
    {
      v50 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(v90, v91);
      sub_1008A7ED4(v90, v91);
      v50 = String._bridgeToObjectiveC()();
    }
  }

  v92 = *(v0 + 464);
  [v37 setPlayActivityFeatureName:v50];

  [v37 setPlayActivityRecommendationData:0];
  v93 = *(v41 + 28);
  v94 = swift_task_alloc();
  *(v0 + 720) = v94;
  *v94 = v0;
  v94[1] = sub_10090BA48;

  return PlaybackController.insert(_:location:issuer:)(v37, 0, v92 + v93);
}

uint64_t sub_10090BA48()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_10090C3EC;
  }

  else
  {
    v2 = sub_10090BB5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10090BB5C()
{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_100916C88(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[92] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10090BC30, v4, v3);
}

uint64_t sub_10090BC30()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100A918E4((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      sub_10000954C(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100916C88(v4, type metadata accessor for Notice);
      sub_10000959C((v0 + 42));
    }

    else
    {
      sub_100916C88(v0[78], type metadata accessor for Notice);
      sub_1000095E8((v0 + 42), &qword_1011A86F0);
    }
  }

  else
  {
    sub_100916C88(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10090BD80, 0, 0);
}

uint64_t sub_10090BD80()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10090BF10()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_10090C6D8;
  }

  else
  {
    v2 = sub_10090C024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10090C024()
{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_100916C88(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[95] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10090C0F8, v4, v3);
}

uint64_t sub_10090C0F8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100A918E4((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      sub_10000954C(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100916C88(v4, type metadata accessor for Notice);
      sub_10000959C((v0 + 37));
    }

    else
    {
      sub_100916C88(v0[77], type metadata accessor for Notice);
      sub_1000095E8((v0 + 37), &qword_1011A86F0);
    }
  }

  else
  {
    sub_100916C88(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10090C248, 0, 0);
}

uint64_t sub_10090C248()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_100916C88(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_10000959C((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_10090C3EC()
{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.actions);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10090C6D8()
{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_100916C88(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_10000959C((v0 + 2));
  v4 = v0[94];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.actions);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v10 = String.init<A>(describing:)();
    v12 = sub_100010678(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10090C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10090CBEC, 0, 0);
}

uint64_t sub_10090CBEC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100916C20(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 4;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10090CEF0, v18, v17);
  }
}

uint64_t sub_10090CEF0()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3077;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_100916C88(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_100916C88(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000089F8(v36 + v14[6], *(v0 + 216), &qword_1011A77F0);
    sub_100916C88(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_100916C88(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_100916C88(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_100916C88(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_100916C88(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100916C20(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_100916C88(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_10090D6A8, 0, 0);
}

uint64_t sub_10090D6A8()
{
  sub_100916C88(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x8000000100E46910;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x8000000100E46910;
  return sub_1008D0A40;
}

uint64_t (*sub_10090DA68())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x8000000100E46910;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x8000000100E46910;
  return sub_1008D0A40;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10091640C(a1, v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_10090DB6C(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

double sub_10090DC54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v4 = *(a1 + 32);
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 48);
  sub_10091640C(v16, v9);
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_10090DD00(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

uint64_t sub_10090DDE8(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

__n128 sub_10090DED0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  sub_10091509C(v11, v9);
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v82 = a4;
  v83 = a7;
  v90 = a3;
  v84 = a5;
  v91 = *(a5 - 8);
  v92 = a6;
  v9 = __chkstk_darwin(a1);
  v81 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v80 = &v65 - v12;
  v14 = v13;
  __chkstk_darwin(v11);
  v87 = &v65 - v15;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v88 = *(v16 - 8);
  v17 = v88[8];
  v18 = __chkstk_darwin(v16 - 8);
  v89 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_10010FC20(&qword_1011A9000);
  v85 = *(v21 - 8);
  v22 = v85[8];
  v23 = __chkstk_darwin(v21 - 8);
  v79 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = *a2;
  v30 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v29 + v30))
  {

    Player.state<A>(for:)(a1);

    MusicItemState.playabilityStatus.getter();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v33 = *(*(v32 - 8) + 56);
  v73 = v28;
  v33(v28, v31, 1, v32);
  v76 = type metadata accessor for Actions.PlaybackContext;
  v68 = v20;
  sub_100916AD8(a2, v20, type metadata accessor for Actions.PlaybackContext);
  v67 = v26;
  sub_1000089F8(v28, v26, &qword_1011A9000);
  v34 = v91;
  v72 = *(v91 + 16);
  v35 = v84;
  v72(v87, a1, v84);
  v36 = *(v88 + 80);
  v86 = a1;
  v37 = (v36 + 32) & ~v36;
  v38 = *(v85 + 80);
  v88 = a2;
  v39 = (v17 + v38 + v37) & ~v38;
  v74 = v17;
  v40 = *(v34 + 80);
  v70 = v22 + v40;
  v71 = v40 | v36 | v38;
  v78 = v14 + 7;
  v69 = v14;
  v66 = (v14 + 7 + ((v22 + v40 + v39) & ~v40)) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v92;
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  v75 = type metadata accessor for Actions.PlaybackContext;
  v43 = v41 + v37;
  v44 = v41;
  v77 = v41;
  sub_100916C20(v68, v43, type metadata accessor for Actions.PlaybackContext);
  sub_10003D17C(v67, v44 + v39, &qword_1011A9000);
  v45 = *(v34 + 32);
  v91 = v34 + 32;
  v85 = v45;
  (v45)(v44 + ((v22 + v40 + v39) & ~v40), v87, v35);
  *(v44 + v66) = v90;
  v46 = v79;
  sub_10003D17C(v73, v79, &qword_1011A9000);
  v47 = v80;
  v72(v80, v86, v35);
  sub_100916AD8(v88, v89, v76);
  v48 = (v38 + 32) & ~v38;
  v49 = (v70 + v48) & ~v40;
  v50 = (v69 + v36 + v49) & ~v36;
  v51 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v92;
  *(v52 + 16) = v35;
  *(v52 + 24) = v53;
  sub_10003D17C(v46, v52 + v48, &qword_1011A9000);
  v54 = v85;
  (v85)(v52 + v49, v47, v35);
  sub_100916C20(v89, v52 + v50, v75);
  v55 = v90;
  *(v52 + v51) = v90;
  v56 = v81;
  v54(v81, v86, v35);
  v57 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = (*(v57 + 64) + v40 + v58) & ~v40;
  v60 = (v78 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v35;
  *(v61 + 24) = v62;
  sub_10003D17C(v82, v61 + v58, &qword_1011A8660);
  (v85)(v61 + v59, v56, v35);
  *(v61 + v60) = v55;
  result = sub_100916C88(v88, type metadata accessor for Actions.PlaybackContext);
  v64 = v83;
  *v83 = v55;
  v64[1] = sub_1009164C4;
  v64[2] = v77;
  v64[3] = &unk_100EEF400;
  v64[4] = v52;
  v64[5] = &unk_100EEF410;
  v64[6] = v61;
  return result;
}

unint64_t sub_10090E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a4;
  v98 = a6;
  v101 = a2;
  v102 = a3;
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = __chkstk_darwin(v8);
  v88 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v89 = &v87 - v12;
  __chkstk_darwin(v11);
  v93 = &v87 - v13;
  v14 = type metadata accessor for MusicPin.Item();
  v95 = *(v14 - 8);
  v96 = v14;
  __chkstk_darwin(v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_1011A9088);
  v17 = __chkstk_darwin(v16 - 8);
  v99 = &v87 - v18;
  v103 = a5;
  v100 = *(a5 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = sub_10010FC20(&qword_1011A9000);
  __chkstk_darwin(v24 - 8);
  v26 = &v87 - v25;
  v27 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v87 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v92 = &v87 - v32;
  __chkstk_darwin(v31);
  v34 = &v87 - v33;
  v35 = sub_10010FC20(&qword_1011A8650);
  __chkstk_darwin(v35 - 8);
  v37 = &v87 - v36;
  v38 = type metadata accessor for Actions.PlaybackContext();
  sub_1000089F8(a1 + *(v38 + 20), v37, &qword_1011A8650);
  v39 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v39 - 8) + 48))(v37, 1, v39);
  sub_1000095E8(v37, &qword_1011A8650);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  sub_1000089F8(v101, v26, &qword_1011A9000);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1000095E8(v26, &qword_1011A9000);
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v104 = 0xD000000000000023;
    v105 = 0x8000000100E5B680;
    (*(v100 + 16))(v23, v102, v103);
    v41._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v41);

    return v104;
  }

  v42 = v28;
  v43 = *(v28 + 32);
  v44 = v34;
  v101 = v27;
  v43(v34, v26, v27);
  v46 = v102;
  v45 = v103;
  v47 = sub_10090F154(v102, v97, v103);
  (*(v100 + 16))(v21, v46, v45);
  v48 = type metadata accessor for MusicPin();
  v49 = v99;
  v50 = swift_dynamicCast();
  v51 = *(*(v48 - 8) + 56);
  if (v50)
  {
    v52 = *(v48 - 8);
    v51(v49, 0, 1, v48);
    v53 = v49;
    v103 = v44;
    v54 = v94;
    MusicPin.item.getter();
    v55 = v95;
    v56 = v47;
    v57 = v96;
    v58 = v42;
    v59 = (*(v95 + 88))(v54, v96);
    v60 = enum case for MusicPin.Item.artist(_:);
    v61 = v54;
    v44 = v103;
    v62 = v57;
    v47 = v56;
    (*(v55 + 8))(v61, v62);
    (*(v52 + 8))(v53, v48);
    v63 = v59 == v60;
    v42 = v58;
    if (v63)
    {
      (*(v58 + 8))(v44, v101);
      return 0;
    }
  }

  else
  {
    v51(v49, 1, 1, v48);
    sub_1000095E8(v49, &qword_1011A9088);
  }

  v64 = v101;
  if (!v47)
  {
    (*(v42 + 8))(v44, v101);
    return 0xD000000000000010;
  }

  v65 = *(v42 + 16);
  v66 = v92;
  v65(v92, v44, v101);
  v67 = (*(v42 + 88))(v66, v64);
  if (v67 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v67 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      if (qword_1011A6748 != -1)
      {
        swift_once();
      }

      v81 = v42;
      v82 = type metadata accessor for Logger();
      sub_1000060E4(v82, static Logger.actions);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Unknown playability status", v85, 2u);
      }

      v104 = 0;
      v105 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v104 = 0xD000000000000010;
      v105 = 0x8000000100E5B6B0;
      v65(v87, v44, v64);
      v86._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v86);

      v77 = v104;
      v78 = *(v81 + 8);
      v78(v44, v64);
      v79 = v66;
      v80 = v64;
      goto LABEL_25;
    }

    (*(v42 + 8))(v44, v64);
    return 0;
  }

  v68 = v42;
  (*(v42 + 96))(v66, v64);
  v70 = v90;
  v69 = v91;
  v71 = v93;
  (*(v90 + 32))(v93, v66, v91);
  v72 = *(v70 + 16);
  v73 = v89;
  v72(v89, v71, v69);
  v74 = (*(v70 + 88))(v73, v69);
  if (v74 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:) || v74 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    (*(v70 + 8))(v93, v69);
    (*(v42 + 8))(v44, v64);
    return 0;
  }

  v104 = 0;
  v105 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v104 = 0xD000000000000018;
  v105 = 0x8000000100E5B6D0;
  v75 = v93;
  v72(v88, v93, v69);
  v76._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v76);

  v77 = v104;
  v78 = *(v70 + 8);
  v78(v75, v69);
  (*(v68 + 8))(v44, v64);
  v79 = v73;
  v80 = v69;
LABEL_25:
  v78(v79, v80);
  return v77;
}

BOOL sub_10090F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v55 = a1;
  v4 = type metadata accessor for MusicPin.Item();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MusicPin();
  v41 = *(v46 - 8);
  v6 = __chkstk_darwin(v46);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v38 - v8;
  v49 = type metadata accessor for Station();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Song();
  v47 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicVideo();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 - 8);
  __chkstk_darwin(v19);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v55, a3);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v21, v17);
LABEL_5:
    (*(v22 + 8))(v24, a3);
    return 1;
  }

  if (swift_dynamicCast())
  {
    (*(v54 + 8))(v16, v14);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    v27 = v51;
    v26 = v52;
    if (swift_dynamicCast())
    {
      v28 = v47;
LABEL_12:
      (*(v28 + 8))(v27, v26);
      goto LABEL_13;
    }

    v27 = v48;
    v26 = v49;
    if (swift_dynamicCast())
    {
      v28 = v44;
      goto LABEL_12;
    }

    v29 = v45;
    v30 = v46;
    if (swift_dynamicCast())
    {
      v32 = v40;
      v31 = v41;
      (*(v41 + 32))(v40, v29, v30);
      v33 = v39;
      MusicPin.item.getter();
      v35 = v42;
      v34 = v43;
      v36 = (*(v42 + 88))(v33, v43);
      if (v36 == enum case for MusicPin.Item.album(_:) || v36 == enum case for MusicPin.Item.artist(_:))
      {
        goto LABEL_21;
      }

      if (v36 == enum case for MusicPin.Item.musicVideo(_:))
      {
LABEL_19:
        (*(v35 + 8))(v33, v34);
        v37 = v53 == 0;
        (*(v31 + 8))(v32, v30);
        (*(v22 + 8))(v24, a3);
        return v37;
      }

      if (v36 == enum case for MusicPin.Item.playlist(_:))
      {
LABEL_21:
        (*(v35 + 8))(v33, v34);
        (*(v31 + 8))(v32, v30);
        goto LABEL_5;
      }

      if (v36 == enum case for MusicPin.Item.song(_:))
      {
        goto LABEL_19;
      }

      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v32, v30);
    }

    (*(v22 + 8))(v24, a3);
    return 0;
  }

  (*(v50 + 8))(v13, v11);
LABEL_13:
  (*(v22 + 8))(v24, a3);
  return v53 == 0;
}

uint64_t sub_10090F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8650);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = type metadata accessor for MusicPin.Item();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9088);
  v6[53] = swift_task_alloc();
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = sub_10010FC20(&qword_1011A9090);
  v6[58] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9000);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_10090FC28, 0, 0);
}

uint64_t sub_10090FC28()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 232);
  (*(v5 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = *(v3 + 48);
  sub_1000089F8(v6, v2, &qword_1011A9000);
  sub_1000089F8(v1, v2 + v7, &qword_1011A9000);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    sub_1000095E8(*(v0 + 480), &qword_1011A9000);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      sub_1000095E8(*(v0 + 464), &qword_1011A9000);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    sub_1000089F8(*(v0 + 464), *(v0 + 472), &qword_1011A9000);
    v11 = v8(v2 + v7, 1, v10);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    if (v11 != 1)
    {
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v33 = *(v0 + 448);
      v35 = *(v0 + 432);
      (*(v34 + 32))(v33, v2 + v7, v35);
      sub_100916CE8(&qword_1011A90A0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v33, v35);
      sub_1000095E8(v13, &qword_1011A9000);
      v37(v12, v35);
      sub_1000095E8(v32, &qword_1011A9000);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    sub_1000095E8(*(v0 + 480), &qword_1011A9000);
    (*(v15 + 8))(v12, v14);
  }

  sub_1000095E8(*(v0 + 464), &qword_1011A9090);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = type metadata accessor for MusicPin();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    sub_1000095E8(v20, &qword_1011A9088);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    v31 = sub_10001C8B8((v0 + 16));
    v16(v31, v30, v29);
    *(v0 + 56) = 0;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 16);
    sub_100309980(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  MusicPin.item.getter();
  v82 = v16;
  v25 = (*(v23 + 88))(v22, v24);
  v26 = enum case for MusicPin.Item.artist(_:);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v17);
  v27 = v25 == v26;
  v16 = v82;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_14:
  v38 = *(v0 + 336);
  v39 = *(v0 + 344);
  v40 = *(v0 + 328);
  v41 = *(v0 + 248);
  v42 = type metadata accessor for Actions.PlaybackContext();
  sub_1000089F8(v41 + *(v42 + 20), v40, &qword_1011A8650);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_1000095E8(*(v0 + 328), &qword_1011A8650);
    goto LABEL_16;
  }

  v45 = *(v0 + 408);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v81 = *(v0 + 360);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 248);
  sub_100916C20(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100916AD8(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = sub_10001C8B8((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  sub_1000089F8(v80 + *(v42 + 28), v0 + 104, &qword_1011A8658);
  v53 = v49 + v48[7];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v49 + v48[8];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v49 + v48[9]) = 0;
  *(v49 + v48[10]) = 0;
  *(v49 + v48[11]) = 0;
  sub_100916AD8(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100916AD8(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  sub_100916AD8(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v68 setRepeatMode:0];

    (*(v66 + 8))(v65, v67);
  }

  else
  {
    v69 = *v64;
    [*v64 setRepeatMode:0];
  }

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  sub_100916B40(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  sub_1000089F8(v0 + 104, v0 + 184, &qword_1011A8658);
  if (*(v0 + 208))
  {
    sub_100059A8C((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    sub_10010FC20(&qword_1011A9098);
    v72 = String.init<A>(reflecting:)();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      sub_1000095E8(v0 + 184, &qword_1011A8658);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  sub_100916BB0(v0 + 144, v54);
  sub_1000095E8(v0 + 104, &qword_1011A8658);
  sub_100916C88(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1000095E8(v0 + 64, &qword_1011ACCA0);
  sub_100916C20(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = sub_1009105F8;
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

uint64_t sub_1009105F8()
{

  if (v0)
  {

    v1 = sub_100916DA0;
  }

  else
  {
    v1 = sub_100910710;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100910710()
{
  v1 = v0[47];
  sub_100916C88(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  sub_100916C88(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100910870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_10010FC20(&qword_1011A7F08);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100910A88, 0, 0);
}

uint64_t sub_100910A88()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    sub_100916C20(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 264) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 272) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 280) = v11;
    *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 296) = sub_1008AC260(inited);
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100910D78, v18, v17);
  }
}

uint64_t sub_100910D78()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v79 = *(v0 + 264);
  v81 = *(v0 + 312);
  v77 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);
  v8 = *(v0 + 88);

  if (v8)
  {
    v9 = 53;
  }

  else
  {
    v9 = 31;
  }

  v74 = v9;
  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v10;
  v14 = (v6 + v5[9]);
  v78 = v11;
  v80 = v12;
  *v14 = v11;
  v14[1] = v12;
  v15 = v6 + v5[10];
  *v15 = v76;
  *(v15 + 16) = v81;
  *(v15 + 24) = v83;
  sub_1000089F8(v7, v75, &qword_1011A7F08);
  v16 = type metadata accessor for MetricsEvent.Page(0);
  v82 = *(*(v16 - 1) + 48);
  v17 = v82(v75, 1, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  if (v17 == 1)
  {

    sub_100633490(v78, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));
    sub_1000095E8(v22, &qword_1011A7F08);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100633490(v78, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));

    sub_100916C88(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000089F8(v25, v26, &qword_1011A7F08);
  v28 = v82(v26, 1, v16);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100916C88(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000089F8(v32, v33, &qword_1011A7F08);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    sub_1000089F8(v38 + v16[6], *(v0 + 200), &qword_1011A77F0);
    sub_100916C88(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0);
  sub_1000089F8(v39, v40, &qword_1011A7F08);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    sub_100916C88(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  sub_1000089F8(v44, v45, &qword_1011A7F08);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    sub_1000095E8(v47, &qword_1011A7F08);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    sub_100916C88(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  sub_1000089F8(v49, v50, &qword_1011A7F08);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    sub_100916C88(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  sub_10003D17C(v56, v57, &qword_1011A7F08);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    sub_1000095E8(v60, &qword_1011A7F08);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    sub_100916C88(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  sub_100916C20(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 296);
  v68 = *(v0 + 248);
  v69 = *(v0 + 232);
  v70 = *(v0 + 216);
  v71 = *(v0 + 192);
  v72 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v69 + 24)), *(v68 + *(v69 + 24) + 8), *(v68 + *(v69 + 36)), *(v68 + *(v69 + 36) + 8), *(v68 + *(v69 + 36) + 16));
  sub_100344B1C(v67, v66, v65, v72, SBYTE1(v72));
  sub_100916C88(v71, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v70, &qword_1011A77F0);

  return _swift_task_switch(sub_100916D9C, 0, 0);
}

uint64_t sub_100911550(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v35 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v34[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011A8650);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = v34 - v19;
  v21 = type metadata accessor for Actions.PlaybackContext();
  sub_1000089F8(a1 + *(v21 + 20), v13, &qword_1011A8650);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100916C20(v13, v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = *a1;
    v24 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (*(v23 + v24))
    {
      sub_100916AD8(v20, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v34[0];
        (*(v34[0] + 32))(v10, v18, v8);

        v26 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v25 + 8))(v10, v8);
      }

      else
      {
        v26 = *v18;
      }

      v28 = v38;
      sub_1001DFD48(v38);
      v29 = v26;
      v30 = sub_100A51A80(v29, v28);

      if (v30)
      {
        Player.state<A>(for:)(v39);
        v31 = v35;
        MusicItemState.playabilityStatus.getter();

        v22 = sub_10090A57C();

        sub_100309AD8(v28);
        (*(v36 + 8))(v31, v37);
LABEL_12:
        sub_100916C88(v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v22;
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v32._countAndFlagsBits = 0xD000000000000020;
      v32._object = 0x8000000100E5B840;
      String.append(_:)(v32);
      v41 = v28;
      _print_unlocked<A, B>(_:_:)();

      sub_100309AD8(v28);
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      v27._countAndFlagsBits = 0xD000000000000025;
      v27._object = 0x8000000100E5B810;
      String.append(_:)(v27);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
    }

    v22 = v42;
    goto LABEL_12;
  }

  v22 = 0xD000000000000012;
  sub_1000095E8(v13, &qword_1011A8650);
  return v22;
}

uint64_t sub_100911A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8650);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100911BE0, 0, 0);
}

uint64_t sub_100911BE0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext();
  sub_1000089F8(v4 + *(v5 + 20), v3, &qword_1011A8650);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[15], &qword_1011A8650);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_100916C20(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100916AD8(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = *v11;
    }

    v0[20] = v15;
    v16 = v0[8];
    v17 = *(v5 + 28);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_100911E30;
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

uint64_t sub_100911E30()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1009121EC;
  }

  else
  {

    v3 = sub_100911F4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100911F4C()
{
  Player.InsertCommand.Location.notice.getter(*(v0 + 88));
  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100911FEC, v2, v1);
}

uint64_t sub_100911FEC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100A918E4((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      sub_10000954C(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100916C88(v4, type metadata accessor for Notice);
      sub_10000959C((v0 + 2));
    }

    else
    {
      sub_100916C88(v0[11], type metadata accessor for Notice);
      sub_1000095E8((v0 + 2), &qword_1011A86F0);
    }
  }

  else
  {
    sub_100916C88(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10091213C, 0, 0);
}

uint64_t sub_10091213C()
{
  sub_100916C88(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009121EC()
{
  v15 = v0;

  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 56) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  else
  {
  }

  sub_100916C88(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, a1);
  return sub_100916C88(v4, type metadata accessor for Notice.Variant);
}

uint64_t sub_1009124E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_10010FC20(&qword_1011A7F08);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_1009126F8, 0, 0);
}

uint64_t sub_1009126F8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    sub_100916C20(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = type metadata accessor for URL();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      sub_10010FC20(&qword_1011A8868);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = sub_1008AC260(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      sub_1008DB7F0(inited + 32);
      type metadata accessor for MainActor();
      *(v0 + 320) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100912A78, v20, v19);
    }
  }
}

uint64_t sub_100912A78()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_1000089F8(v7, v75, &qword_1011A7F08);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));
    sub_1000095E8(v22, &qword_1011A7F08);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));

    sub_100916C88(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000089F8(v25, v26, &qword_1011A7F08);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100916C88(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000089F8(v32, v33, &qword_1011A7F08);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_1000089F8(v39 + v15[6], *(v0 + 200), &qword_1011A77F0);
    sub_100916C88(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0);
  sub_1000089F8(v40, v41, &qword_1011A7F08);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_100916C88(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_1000089F8(v45, v46, &qword_1011A7F08);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_100916C88(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_1000089F8(v50, v51, &qword_1011A7F08);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_100916C88(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_10003D17C(v57, v58, &qword_1011A7F08);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_1000095E8(v61, &qword_1011A7F08);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_100916C88(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_100916C20(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100344B1C(v68, v67, v66, v73, SBYTE1(v73));
  sub_100916C88(v72, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v71, &qword_1011A77F0);

  return _swift_task_switch(sub_10091325C, 0, 0);
}

uint64_t sub_10091325C()
{
  sub_100916C88(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_1008D0A40;
}

uint64_t (*sub_1009134A8())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_1008D0A40;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "ContainerDetail AddDownload";
  }

  else
  {
    v2 = ".forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_1008D0A40;
}

uint64_t (*sub_1009136C4())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "ContainerDetail AddDownload";
  }

  else
  {
    v2 = ".forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_1008D0A40;
}

uint64_t sub_10091379C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10091381C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t sub_100913894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100911550((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_100913990()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100911A50(v0 + v3, v6, v0 + v5);
}

uint64_t sub_100913AA0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100008F30;

  return sub_1009124E0(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_100913C18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100913E5C();
  }

  return result;
}

uint64_t sub_100913C70()
{
  v0 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
    __chkstk_darwin(v8);
    v9 = type metadata accessor for Song();
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v1 + 16))(v4, v6, v0);
    static Published.subscript.setter();
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_100913E5C()
{
  v78 = type metadata accessor for Song();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v77 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v82 = v0;

  dispatch thunk of MusicPlayer.ItemState.playabilityStatus.getter();

  v20 = *(v10 + 16);
  v80 = v19;
  v76 = v10 + 16;
  v20(v17, v19, v9);
  v81 = v10;
  v21 = (*(v10 + 88))(v17, v9);
  v22 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v81 + 96))(v17, v9);
    (*(v3 + 32))(v8, v17, v2);
    (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v73 = v8;
    v23 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v24 = *(v3 + 8);
    v74 = (v3 + 8);
    v75 = v2;
    v24(v6, v2);
    if ((v23 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v83))
    {

      v25 = v81;
      v26 = v77;
      v27 = (*(v81 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v9);
      __chkstk_darwin(v27);
      v28 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v72 - 2) = v28;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v26, v9);

      static Published.subscript.setter();
      v30 = *(v25 + 8);
      v30(v26, v9);
      v24(v73, v75);
    }

    else
    {
      v41 = v77;
      v42 = (v20)(v77, v80, v9);
      __chkstk_darwin(v42);
      v43 = v81;
      v72 = v24;
      v44 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v45 = swift_getKeyPath();
      __chkstk_darwin(v45);
      *(&v72 - 2) = v44;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v41, v9);

      static Published.subscript.setter();
      v30 = *(v43 + 8);
      v30(v41, v9);
      v72(v73, v75);
    }

    return (v30)(v80, v9);
  }

  v31 = v21;
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v83 || (v83, swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v83 & 1) != 0) || (, v32 = Player.supportsDelegation.getter(), , (v32 & 1) != 0))
    {
      v33 = v77;
      v34 = v80;
      v35 = (v20)(v77, v80, v9);
      __chkstk_darwin(v35);
      v36 = v20;
      v37 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      *(&v72 - 2) = v37;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v36(v79, v33, v9);

      static Published.subscript.setter();
      v39 = *(v81 + 8);
      v39(v33, v9);
      return (v39)(v34, v9);
    }

    v53 = v82;
    v54 = *(*v82 + 120);
    swift_beginAccess();
    v56 = v74;
    v55 = v75;
    v57 = v53 + v54;
    v58 = v78;
    (*(v75 + 16))(v74, v57, v78);
    Song.catalogID.getter();
    v60 = v59;
    (*(v55 + 8))(v56, v58);
    if (!v60)
    {
      v67 = v77;
      (*(v3 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v68 = v81;
      v69 = (*(v81 + 104))(v67, v22, v9);
      __chkstk_darwin(v69);
      *(&v72 - 2) = v58;
      *(&v72 - 1) = &protocol witness table for Song;
      v70 = swift_getKeyPath();
      __chkstk_darwin(v70);
      *(&v72 - 2) = v71;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v67, v9);

      static Published.subscript.setter();
      v30 = *(v68 + 8);
      v30(v67, v9);
      return (v30)(v80, v9);
    }

    v61 = v81;
    v62 = v77;
    v63 = (*(v81 + 104))(v77, v31, v9);
    __chkstk_darwin(v63);
    *(&v72 - 2) = v58;
    *(&v72 - 1) = &protocol witness table for Song;
    v64 = swift_getKeyPath();
    __chkstk_darwin(v64);
    *(&v72 - 2) = v65;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v20(v79, v62, v9);

    static Published.subscript.setter();
    v66 = *(v61 + 8);
    v66(v62, v9);
    return (v66)(v80, v9);
  }

  else
  {
    v46 = v20;
    v47 = v77;
    v48 = v80;
    v49 = v46(v77, v80, v9);
    __chkstk_darwin(v49);
    v50 = v78;
    *(&v72 - 2) = v78;
    *(&v72 - 1) = &protocol witness table for Song;
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v72 - 2) = v50;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v46(v79, v47, v9);

    static Published.subscript.setter();
    v52 = *(v81 + 8);
    v52(v47, v9);
    v52(v48, v9);
    return (v52)(v17, v9);
  }
}

uint64_t sub_100914A64()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100914E9C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10091509C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    sub_100916D40(&v11, v9);
    sub_1000089F8(&v10, v9, &unk_1011ACB70);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_10090DCD8;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_100EEF778;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_100EEF780;
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_1009151F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100907E7C(v0 + v5, v0 + v6, v2, v3);
}

unint64_t sub_100915340()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_100909C4C((v0 + v3), v4, v1);
}

uint64_t sub_100915410()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10002F3F4;

  return sub_10090A89C(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_1009155E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_10090C9D8(v0 + v5, v0 + v6, v2, v3);
}

char *sub_100915730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v82 = a2;
  v83 = a1;
  v5 = sub_10010FC20(&qword_1011AD180);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v60 - v6;
  v7 = sub_10010FC20(&qword_1011A90C8);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v60 - v8;
  v9 = sub_10010FC20(&qword_1011A90D0);
  __chkstk_darwin(v9 - 8);
  v81 = &v60 - v10;
  v69 = sub_10010FC20(&unk_1011AD170);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v60 - v11;
  v71 = sub_10010FC20(&unk_1011ADA30);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - v12;
  v72 = sub_10010FC20(&qword_1011A90D8);
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v60 - v13;
  v63 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v62 = *(v63 - 8);
  v14 = __chkstk_darwin(v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v61 = sub_10010FC20(&qword_1011A90E0);
  v19 = *(v61 - 1);
  __chkstk_darwin(v61);
  v21 = &v60 - v20;
  v22 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v66 = v4 + 32;
  v29 = *(*v4 + 128);
  (*(v23 + 104))(&v60 - v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v22);
  (*(v23 + 16))(v26, v28, v22);
  Published.init(initialValue:)();
  (*(v23 + 8))(v28, v22);
  (*(v19 + 32))(&v4[v29], v21, v61);
  v30 = *(*v4 + 136);
  v31 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v32 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v32 - 8) + 104))(v18, v31, v32);
  v33 = v62;
  v34 = v63;
  (*(v62 + 104))(v18, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v63);
  v61 = *(v33 + 16);
  v61(v16, v18, v34);
  v35 = v64;
  Published.init(initialValue:)();
  v62 = *(v33 + 8);
  (v62)(v18, v34);
  (*(v65 + 32))(&v4[v30], v35, v72);
  v36 = *(*v4 + 120);
  v37 = type metadata accessor for Song();
  v72 = *(v37 - 8);
  (*(v72 + 16))(&v4[v36], v83, v37);
  v38 = v74;
  *(v4 + 2) = v82;
  *(v4 + 3) = v38;

  sub_100913E5C();
  dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
  v86 = v37;
  v87 = &protocol witness table for Song;
  swift_getKeyPath();
  v74 = v37;
  v84 = v37;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v61(v16, v18, v34);

  static Published.subscript.setter();
  (v62)(v18, v34);
  v39 = v67;
  dispatch thunk of MusicPlayer.ItemState.$playabilityStatus.getter();
  sub_10002705C();
  v40 = static OS_dispatch_queue.main.getter();
  v88 = v40;
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = *(v41 - 8);
  v43 = v81;
  v65 = *(v42 + 56);
  v64 = (v42 + 56);
  (v65)(v81, 1, 1, v41);
  sub_100020674(&qword_1011A90E8, &unk_1011AD170);
  v44 = sub_100916CE8(&qword_1011AD100, sub_10002705C);
  v45 = v68;
  v46 = v43;
  v47 = v69;
  v63 = v44;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v46, &qword_1011A90D0);

  (*(v70 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&unk_1011ADA40, &unk_1011ADA30);

  v48 = v71;
  Publisher<>.sink(receiveValue:)();

  v49 = v66;
  (*(v73 + 8))(v45, v48);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v50 = v75;
  v51 = v82;
  dispatch thunk of MusicPlayer.ItemState.$previewCapabilityStatus.getter();
  v52 = static OS_dispatch_queue.main.getter();
  v88 = v52;
  v53 = v81;
  (v65)(v81, 1, 1, v41);
  sub_100020674(&qword_1011A90F0, &qword_1011AD180);
  v54 = v77;
  v55 = v78;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v53, &qword_1011A90D0);

  (*(v76 + 8))(v50, v54);
  v56 = swift_allocObject();
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  sub_100020674(qword_1011ADA50, &qword_1011A90C8);

  v58 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v79 + 8))(v55, v58);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v72 + 8))(v83, v74);
  return v4;
}

uint64_t sub_10091640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_100905ECC;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100EEF5A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100EEF5A8;
  *(a2 + 112) = 0;
}

unint64_t sub_1009164C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10010FC20(&qword_1011A9000) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v9 = *(v0 + ((*(*(v1 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10090E690(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_100916630()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A9000) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100008F30;

  return sub_10090F8A8(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_10091680C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100008F30;

  return sub_100910870(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_1009169F4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100916A0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100916A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100916A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100916AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100916B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ACCA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100916BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8658);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100916C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100916C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100916CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100916DD4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_10010FC20(a1);
  sub_10092FF40(a2, a1);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  sub_100118E9C(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_1000D9088;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_100EEF790;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_100EEF798;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_1009170F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_1000D9088;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_100EEF790;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_100EEF798;
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000100E40AC0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000100E40AC0;
  return sub_1008D04DC;
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000100E5B870;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000100E5B870;
  return sub_1008D0A40;
}

uint64_t (*sub_1009172FC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000100E40AC0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000100E40AC0;
  return sub_1008D0A40;
}

uint64_t (*sub_10091739C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000100E5B870;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000100E5B870;
  return sub_1008D0A40;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v45 = a6;
  v37 = a5;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = __chkstk_darwin(v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = sub_10010FC20(&qword_1011A8660);
  v35 = *(v18 - 8);
  v19 = *(v35 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  sub_100008FE4(a1, v47);
  v22 = swift_allocObject();
  sub_100059A8C(v47, v22 + 16);
  *(v22 + 56) = a2;
  *(v22 + 64) = a3;
  v23 = swift_allocObject();
  v24 = v37;
  v38 = v23;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  sub_1000089F8(v45, v21, &qword_1011A8660);
  v40 = a1;
  sub_100008FE4(a1, v46);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_10003D17C(v21, v27 + v25, &qword_1011A8660);
  sub_100059A8C(v46, v27 + v26);

  String.LocalizationValue.init(stringLiteral:)();
  (*(v43 + 16))();
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v28 = qword_101219808;
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;

  sub_1000095E8(v45, &qword_1011A8660);
  sub_10000959C(v40);
  result = (*(v43 + 8))(v17, v44);
  *a7 = sub_100917CE4;
  a7[1] = v22;
  v33 = v38;
  a7[2] = &unk_100EEF7B0;
  a7[3] = v33;
  a7[4] = &unk_100EEF7C0;
  a7[5] = v27;
  a7[6] = v29;
  a7[7] = v31;
  return result;
}

unint64_t sub_100917834(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for MusicLibrary.ShareAction();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011A93F8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  sub_100008FE4(a1, v39);
  sub_10010FC20(&qword_1011A9400);
  sub_10010FC20(&qword_1011A9408);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v37, v40);
    sub_10000954C(v40, v40[3]);
    static MusicLibraryAction<>.share.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v25 + 8))(v9, v7);
    v14 = sub_100917CF0();
    (*(v11 + 8))(v13, v10);
    sub_10000959C(v40);
    return v14;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  sub_1000095E8(v37, &qword_1011A9410);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v36[7] = v35;
  v36[0] = v28;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;
  sub_100014984(v36);
  if ((BYTE1(v36[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_10000954C(a1, v16);
  (*(v17 + 16))(v16, v17);
  v18 = type metadata accessor for URL();
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
  sub_1000095E8(v6, &qword_1011A77F0);
  if (v19 != 1)
  {
    return 0;
  }

  sub_100008FE4(a1, &v27);
  sub_10010FC20(&qword_1011A7F28);
  if (swift_dynamicCast())
  {
    v20 = *(&v29 + 1);
    v21 = v30;
    sub_10000954C(&v28, *(&v29 + 1));
    (*(v21 + 8))(v20, v21);
    v23 = v22;
    sub_10000959C(&v28);
    if (v23)
    {

      return 0;
    }
  }

  else
  {
    *&v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1000095E8(&v28, &unk_1011AD930);
  }

  return 0xD00000000000001DLL;
}

unint64_t sub_100917CF0()
{
  v1 = type metadata accessor for MusicLibrary.ShareAction.UnsupportedReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v29 = &v26 - v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&qword_1011A93F8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = v0;
  v16(&v26 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v29;
    v18(v29, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v8, v1);
      return v21;
    }

    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v30 = 0x206E776F6E6B6E55;
        v31 = 0xEF206E6F73616572;
        v18(v27, v8, v1);
        v24._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v24);

        v21 = v30;
        v25 = *(v2 + 8);
        v25(v8, v1);
        v25(v29, v1);
        return v21;
      }

      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v8, v1);
  }

  else if (v17 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v30 = 0xD000000000000019;
    v31 = 0x8000000100E5BAC0;
    v16(v13, v28, v9);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v21 = v30;
    (*(v10 + 8))(v15, v9);
    return v21;
  }

  return 0;
}

uint64_t sub_100918194(int *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1003EF7D4;

  return v5();
}

uint64_t sub_1009182A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_100918194(v2);
}

uint64_t sub_10091833C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10091854C, 0, 0);
}

uint64_t sub_10091854C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 200), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_1008D08BC(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000954C(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v14 = v7[3];
    sub_10000954C(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_1008AC260(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100918864, v20, v19);
  }
}

uint64_t sub_100918864()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_1000089F8(v36 + v14[6], *(v0 + 176), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_10003D17C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 96), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_10092FF94, 0, 0);
}

uint64_t sub_100919018()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_10091833C(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEF7C8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEF7D0;
  *(a2 + 104) = 0;
}

uint64_t sub_1009191CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEF7C8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEF7D0;
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_10003D17C(a6, v17 + v15, &qword_1011A8660);
  result = sub_100059A8C(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &unk_100EEF7E0;
  a7[5] = v17;
  return result;
}

uint64_t sub_1009193A8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1009195B8, 0, 0);
}

uint64_t sub_1009195B8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 200), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_1008D08BC(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000954C(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v14 = v7[3];
    sub_10000954C(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_1008AC260(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1009198D0, v20, v19);
  }
}

uint64_t sub_1009198D0()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12805;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_1000089F8(v36 + v14[6], *(v0 + 176), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_10003D17C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 96), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_10091A084, 0, 0);
}

uint64_t sub_10091A084()
{
  sub_1008D9B58(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10091A1BC()
{
  v1 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  sub_10000959C(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_10091A418()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002F3F4;

  return sub_1009193A8(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id sub_10091A73C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10091A9AC, 0, 0);
}

uint64_t sub_10091A9AC()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10091AA20(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10010FC20(&qword_1011A77F0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10091AABC, 0, 0);
}

uint64_t sub_10091AABC()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    URL._bridgeToObjectiveC()(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10091AC14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091ACB0, 0, 0);
}

uint64_t sub_10091ACB0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  Curator.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10091ADD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091AE74, 0, 0);
}

uint64_t sub_10091AE74()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  EditorialItem.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10091AF9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091B038, 0, 0);
}

uint64_t sub_10091B038()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  Genre.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10091B160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091B1FC, 0, 0);
}

uint64_t sub_10091B1FC()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  RadioShow.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10091B324(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091B3C0, 0, 0);
}

uint64_t sub_10091B3C0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  RecordLabel.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10091B4E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011A77F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10091B584, 0, 0);
}

uint64_t sub_10091B584()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  SocialProfile.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10010FC20(&qword_1011A77F0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10091B74C, 0, 0);
}

uint64_t sub_10091B74C()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10091B864;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

uint64_t sub_10091B864()
{

  return _swift_task_switch(sub_10091B960, 0, 0);
}

uint64_t sub_10091B960()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_1011A8FA8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8858);
  v2[9] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A9110);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A9118);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10091BE70, 0, 0);
}

uint64_t sub_10091BE70()
{
  v1 = v0[16];
  Album.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v0[16], &qword_1011A77F0);
    v4 = Album.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Album();
      sub_10092FEB8(&qword_1011A88D0, &type metadata accessor for Album);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_10091C110;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10091C110()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10091C470;
  }

  else
  {

    v2 = sub_10091C22C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10091C22C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A8FA8, &qword_1011A93F0, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_1000095E8(v12, &qword_1011A8858);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Album.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10091C470()
{
  v21 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for MusicOffer.Kind();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicOffer();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011A8FA8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8858);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011A9110);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A9118);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10091CA2C, 0, 0);
}

uint64_t sub_10091CA2C()
{
  v1 = Album.catalogID.getter();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 216) = v5;
    v6 = [v5 specialization];
    *(v0 + 224) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 232) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 240) = type metadata accessor for Album();
        sub_10092FEB8(&qword_1011A88D0, &type metadata accessor for Album);

        MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
        sub_10010FC20(&qword_1011AA660);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100EBC6C0;
        sub_10010FC20(&qword_1011A88C8);
        *(v9 + 32) = static PartialMusicProperty<A>.offers.getter();
        MusicCatalogResourceRequest.properties.setter();
        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        *v10 = v0;
        v10[1] = sub_10091CCDC;
        v11 = *(v0 + 168);
        v12 = *(v0 + 176);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10091CCDC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10091D35C;
  }

  else
  {

    v2 = sub_10091CDF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10091CDF8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  MusicCatalogResourceResponse.items.getter();
  sub_100916DD4(&qword_1011A8FA8, &qword_1011A93F0, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  sub_1000089F8(v2, v3, &qword_1011A8858);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    sub_1000095E8(*(v0 + 136), &qword_1011A8858);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    Album.url.getter();
    (*(v7 + 8))(v13, v12);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      URL._bridgeToObjectiveC()(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  sub_1000089F8(v21, v22, &qword_1011A8858);
  if (v8(v22, 1, v20) == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A8858);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = Album.offers.getter();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        sub_100015C24(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          MusicOffer.kind.getter();
          v36 = MusicOffer.Kind.rawValue.getter();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100015C24((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  sub_1000095E8(v49, &qword_1011A8858);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10091D35C()
{
  v22 = v0;
  if (qword_1011A6760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011A90F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_100010678(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_1000095E8(v5, &qword_1011A9120);

    sub_10000959C(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10091D658(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Album.shareURL.getter(a1);
}

uint64_t sub_10091D708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}