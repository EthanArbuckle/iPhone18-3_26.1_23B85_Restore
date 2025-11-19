uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.capabilityUpsell);
}

uint64_t sub_1002A7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1002A7210, v6, v5);
}

uint64_t sub_1002A7210()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004B6A44(v2);
  v4 = v3;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1002A9DB4(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_1004BBC24().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002A7344@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = sub_1004BBA44();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7BB4();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B7B64();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B7CF4();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB384();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BAD04();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004B7A34();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004BB9B4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v59 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v59 - v24;
  sub_1004BB9C4();
  v26 = (*(v21 + 88))(v25, v20);
  if (v26 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v25, v20);
    v27 = *(v17 + 32);
    v27(v19, v25, v16);
    v28 = v75;
    v75[3] = v16;
    v28[4] = sub_1002A9DB4(&qword_100602950, &type metadata accessor for MusicMovie);
    v29 = sub_1000133B0(v28);
    return (v27)(v29, v19, v16);
  }

  v31 = v75;
  if (v26 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v32 = *(v74 + 32);
    v32(v15, v25, v13);
    v31[3] = v13;
    v31[4] = &protocol witness table for MusicVideo;
    v33 = sub_1000133B0(v31);
    return (v32)(v33, v15, v13);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v25, v20);
    v34 = v73;
    v35 = *(isa + 4);
    v35(v12, v25, v73);
    v31[3] = v34;
    v31[4] = &protocol witness table for Song;
    v36 = sub_1000133B0(v31);
    return (v35)(v36, v12, v34);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v69;
    v38 = *(v70 + 32);
    v39 = v71;
    v38(v69, v25, v71);
    v31[3] = v39;
    v40 = &unk_100602960;
    v41 = &type metadata accessor for TVEpisode;
LABEL_13:
    v31[4] = sub_1002A9DB4(v40, v41);
    v42 = sub_1000133B0(v31);
    return (v38)(v42, v37, v39);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v66;
    v38 = *(v67 + 32);
    v39 = v68;
    v38(v66, v25, v68);
    v31[3] = v39;
    v40 = &unk_100602978;
    v41 = &type metadata accessor for UploadedAudio;
    goto LABEL_13;
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v60;
    v38 = *(v61 + 32);
    v39 = v62;
    v38(v60, v25, v62);
    v31[3] = v39;
    v40 = &unk_100602980;
    v41 = &type metadata accessor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v44 = sub_1004B80B4();
  sub_100007084(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = sub_1004B8094();
  v49 = sub_1004BC994();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    sub_1004BB9C4();
    sub_1002A9DB4(&qword_100601E98, &type metadata accessor for Playlist.Entry.InternalItem);
    v52 = sub_1004BD934();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_100012018(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    sub_100004C6C(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v31[4] = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  return v58(v25, v43);
}

uint64_t sub_1002A7D14@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v1 = sub_1004BB904();
  v86 = *(v1 - 8);
  v87 = v1;
  __chkstk_darwin(v1);
  v85 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004BBA84();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BAD04();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B7A34();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v94 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BB744();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1004B7BB4();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004B7B64();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004B7C34();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B7CF4();
  v79 = *(v14 - 8);
  v80 = v14;
  __chkstk_darwin(v14);
  v78 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB384();
  v84 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004BB434();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004B7644();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v68 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v67 - v27;
  v29 = *(v24 + 16);
  v29(&v67 - v27, v98, v23);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v97;
    v97[3] = v19;
    v32[4] = &protocol witness table for Album;
    v33 = sub_1000133B0(v32);
    return (v31)(v33, v22, v19);
  }

  v35 = v97;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v94;
    v37 = *(v95 + 32);
    v38 = v28;
    v39 = v96;
    v37(v94, v38, v96);
    v35[3] = v39;
    v40 = &qword_100602950;
    v41 = &type metadata accessor for MusicMovie;
LABEL_5:
    v35[4] = sub_1002A9DB4(v40, v41);
    v42 = sub_1000133B0(v35);
    v43 = v36;
    v44 = v39;
    return v37(v42, v43, v44);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v45 = v91;
    v37 = *(v92 + 32);
    v46 = v93;
    v37(v91, v28, v93);
    v47 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v46;
    v35[4] = v47;
    v42 = sub_1000133B0(v35);
    v43 = v45;
    v44 = v46;
    return v37(v42, v43, v44);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v45 = v88;
    v37 = *(v89 + 32);
    v46 = v90;
    v37(v88, v28, v90);
    v47 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v85;
    v37 = *(v86 + 32);
    v48 = v28;
    v39 = v87;
    v37(v85, v48, v87);
    v35[3] = v39;
    v40 = &unk_100604350;
    v41 = &type metadata accessor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v49 = *(v84 + 32);
    v49(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v50 = sub_1000133B0(v35);
    return (v49)(v50, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v45 = v81;
      v37 = *(v82 + 32);
      v46 = v83;
      v37(v81, v28, v83);
      v47 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v79 + 32);
      v36 = v78;
      v51 = v28;
      v39 = v80;
      v37(v78, v51, v80);
      v35[3] = v39;
      v40 = &unk_100602960;
      v41 = &type metadata accessor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v76 + 32);
      v36 = v75;
      v52 = v28;
      v39 = v77;
      v37(v75, v52, v77);
      v35[3] = v39;
      v40 = &unk_100602970;
      v41 = &type metadata accessor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v73 + 32);
      v36 = v72;
      v53 = v28;
      v39 = v74;
      v37(v72, v53, v74);
      v35[3] = v39;
      v40 = &unk_100602978;
      v41 = &type metadata accessor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v70 + 32);
      v36 = v69;
      v54 = v28;
      v39 = v71;
      v37(v69, v54, v71);
      v35[3] = v39;
      v40 = &unk_100602980;
      v41 = &type metadata accessor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_100600768 != -1)
    {
      swift_once();
    }

    v55 = sub_1004B80B4();
    sub_100007084(v55, static Logger.capabilityUpsell);
    v56 = v68;
    v29(v68, v98, v23);
    v57 = sub_1004B8094();
    v58 = sub_1004BC994();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v96 = v59;
      v98 = swift_slowAlloc();
      v99 = v98;
      *v59 = 136315138;
      sub_1002A9DB4(&unk_100609A10, &type metadata accessor for GenericMusicItem);
      v60 = sub_1004BD934();
      v61 = v56;
      v63 = v62;
      v64 = *(v24 + 8);
      v64(v61, v23);
      v65 = sub_100012018(v60, v63, &v99);

      v66 = v96;
      *(v96 + 1) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Unsupported GenericMusicItem kind=%s", v66, 0xCu);
      sub_100004C6C(v98);
    }

    else
    {

      v64 = *(v24 + 8);
      v64(v56, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v64)(v28, v23);
  }
}

uint64_t sub_1002A8B04()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.capabilityUpsell);
  sub_100007084(v0, static Logger.capabilityUpsell);
  return sub_1004B80A4();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v3 = sub_100007084(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = sub_1004B6634();
  v93 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v85 - v9;
  v11 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v85 - v12;
  v14 = sub_1004B6B04();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  v16 = __chkstk_darwin(v14);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v85 - v17;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v18 = v101;
  if (!v101)
  {
    goto LABEL_8;
  }

  v19 = [v101 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v19)
  {

    goto LABEL_8;
  }

  v90 = v4;
  v20 = v19;
  v21 = sub_1004BBE64();
  v91 = v14;
  v22 = v21;
  v24 = v23;

  *&v101 = 0x2F2F3A636973756DLL;
  *(&v101 + 1) = 0xE800000000000000;
  v103._countAndFlagsBits = v22;
  v25 = v91;
  v103._object = v24;
  sub_1004BC024(v103);

  sub_1004B6AC4();

  v26 = v95;
  if ((*(v95 + 48))(v13, 1, v25) == 1)
  {

    sub_100007214(v13, &qword_100600DE0);
LABEL_8:
    if (qword_100600768 != -1)
    {
      swift_once();
    }

    v27 = sub_1004B80B4();
    sub_100007084(v27, static Logger.capabilityUpsell);
    v28 = sub_1004B8094();
    v29 = sub_1004BC984();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not build marketingURL", v30, 2u);
    }

    return;
  }

  v31 = *(v26 + 32);
  v88 = v26 + 32;
  v87 = v31;
  v31(v94, v13, v25);
  sub_100003ABC(&qword_100601328);
  v32 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v89 = *(v93 + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1004C50C0;
  v34 = v33;
  v86 = v32;
  sub_1004B6604();
  sub_1002A9B60(a1, &v101);
  if (v102[24] != 253 && v102[24] != 255 && v102[24] != 254)
  {
    sub_100052188(&v101);
  }

  sub_1004B6604();

  sub_1002A9B60(a1, &v99);
  if (v100[24] < 0xFDu)
  {
    v101 = v99;
    *v102 = *v100;
    *&v102[9] = *&v100[9];
    sub_1002A4C84();
    v37 = v34;
    if (v38)
    {
      sub_1004B6604();

      v40 = *(v34 + 2);
      v39 = *(v34 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_100018238(v39 > 1, v40 + 1, 1, v34);
      }

      v41 = v86;
      *(v37 + 2) = v40 + 1;
      (*(v93 + 32))(&v37[v41 + v40 * v89], v10, v5);
    }

    else
    {
      if (qword_100600768 != -1)
      {
        swift_once();
      }

      v42 = sub_1004B80B4();
      sub_100007084(v42, static Logger.capabilityUpsell);
      sub_1002A9D4C(&v101, &v99);
      v43 = sub_1004B8094();
      v44 = sub_1004BC994();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v98 = v85;
        *v45 = 136315138;
        sub_1002A9D4C(&v99, v96);
        v46 = sub_1004BBF04();
        v48 = v47;
        sub_1002A9D84(&v99);
        v49 = sub_100012018(v46, v48, &v98);
        v37 = v34;

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "Missing kind for item=%s", v45, 0xCu);
        sub_100004C6C(v85);
      }

      else
      {

        sub_1002A9D84(&v99);
      }

      v41 = v86;
    }

    sub_1002A9D4C(&v101, &v99);
    if (v100[24] == 1)
    {
      v50 = v99;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v52 = v51;

      if (v52)
      {
LABEL_34:
        sub_1004B6604();

        v54 = *(v37 + 2);
        v53 = *(v37 + 3);
        if (v54 >= v53 >> 1)
        {
          v37 = sub_100018238(v53 > 1, v54 + 1, 1, v37);
        }

        v36 = v94;
        sub_1002A9D84(&v101);
        *(v37 + 2) = v54 + 1;
        (*(v93 + 32))(&v37[v41 + v54 * v89], v8, v5);
        v35 = v90;
        goto LABEL_44;
      }
    }

    else
    {
      sub_100089BAC(&v99, v96);
      v55 = v97;
      sub_100009178(v96, v97);
      sub_1002A5F44(v55);
      v57 = v56;
      sub_100004C6C(v96);
      if (v57)
      {
        goto LABEL_34;
      }
    }

    if (qword_100600768 != -1)
    {
      swift_once();
    }

    v58 = sub_1004B80B4();
    sub_100007084(v58, static Logger.capabilityUpsell);
    sub_1002A9D4C(&v101, &v99);
    v59 = sub_1004B8094();
    v60 = sub_1004BC994();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v98 = v62;
      *v61 = 136315138;
      sub_1002A9D4C(&v99, v96);
      v63 = sub_1004BBF04();
      v65 = v64;
      sub_1002A9D84(&v99);
      v66 = sub_100012018(v63, v65, &v98);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Missing id for item=%s", v61, 0xCu);
      sub_100004C6C(v62);
    }

    else
    {

      sub_1002A9D84(&v99);
    }

    sub_1002A9D84(&v101);
    v36 = v94;
    v35 = v90;
    goto LABEL_44;
  }

  sub_100052188(&v99);
  v35 = v90;
  v36 = v94;
  v37 = v34;
LABEL_44:
  v67._rawValue = v37;
  sub_1004B6AB4(v67);

  if (qword_100600768 != -1)
  {
    swift_once();
  }

  v68 = sub_1004B80B4();
  sub_100007084(v68, static Logger.capabilityUpsell);
  v69 = sub_1004B8094();
  v70 = sub_1004BC9A4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v101 = v72;
    *v71 = 136446210;
    swift_beginAccess();
    sub_1002A9DB4(&qword_100603C38, &type metadata accessor for URL);
    v73 = v91;
    v74 = sub_1004BD934();
    v76 = v36;
    v77 = sub_100012018(v74, v75, &v101);

    *(v71 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v69, v70, "Will present upsell with URL=%{public}s", v71, 0xCu);
    sub_100004C6C(v72);
    v35 = v90;
  }

  else
  {

    v73 = v91;
    v76 = v36;
  }

  v78 = v95;
  v79 = sub_1004BC4B4();
  (*(*(v79 - 8) + 56))(v35, 1, 1, v79);
  swift_beginAccess();
  v80 = v92;
  (*(v78 + 16))(v92, v76, v73);
  sub_1004BC474();
  v81 = sub_1004BC464();
  v82 = v78;
  v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  *(v84 + 24) = &protocol witness table for MainActor;
  v87(v84 + v83, v80, v73);
  sub_1000FD6BC(0, 0, v35, &unk_1004D98C0, v84);

  (*(v82 + 8))(v76, v73);
}

uint64_t sub_1002A99DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A99F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A9A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_1002A9A88(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_1002A9AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A9B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002A9B98()
{
  v1 = sub_1004B6B04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002A9C5C(uint64_t a1)
{
  v4 = *(sub_1004B6B04() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_1002A7178(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002A9DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002A9DFC()
{
  result = sub_1002A9E1C();
  qword_100618C60 = result;
  return result;
}

uint64_t sub_1002A9E1C()
{
  v0 = sub_1004B6B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_10060A210);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v61 = sub_1002F1688(_swiftEmptyArrayStorage);
  sub_100003ABC(&qword_10060A218);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v63 = *(v4 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C5070;
  v65 = v18;
  v58 = v19;
  v20 = v19 + v18;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = [v22 resourceURL];

  if (v23)
  {
    sub_1004B6A94();

    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 0;
  }

  else
  {
    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 1;
  }

  v64 = v24;
  v24(v25, v26, 1, v0);
  v27 = v1;
  sub_1002AD424(v17, v20);
  type metadata accessor for BundleFinder();
  v28 = [v21 bundleForClass:swift_getObjCClassFromMetadata()];
  v29 = [v28 resourceURL];

  if (v29)
  {
    sub_1004B6A94();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v60;
  v56 = v27;
  v32 = v15;
  v33 = v15;
  v34 = v64;
  v64(v32, v30, 1, v0);
  v35 = v63;
  sub_1002AD424(v33, v20 + v63);
  v36 = [v21 mainBundle];
  v37 = [v36 bundleURL];

  sub_1004B6A94();
  v62 = (v27 + 7);
  v34(v20 + 2 * v35, 0, 1, v0);
  v66 = v61;
  sub_1002CBB50(v58);
  v38 = v66;
  v39 = v66[2];
  if (v39)
  {
    v40 = 0;
    v41 = v65 + v66;
    v65 = (v56 + 6);
    v61 = (v56 + 1);
    v56 += 4;
    v57 = "1F9AD12BundleFinder";
    v58 = v39;
    while (v40 < v38[2])
    {
      sub_10000F778(v41, v9, &qword_10060A210);
      v42 = *v65;
      if ((*v65)(v9, 1, v0) == 1)
      {
        sub_1002AD494(v9);
        v43 = 1;
      }

      else
      {
        sub_1004B6A64();
        (*v61)(v9, v0);
        v43 = 0;
      }

      v64(v12, v43, 1, v0);
      sub_10000F778(v12, v31, &qword_10060A210);
      if (v42(v31, 1, v0) == 1)
      {
        sub_1002AD494(v12);
      }

      else
      {
        v44 = v38;
        v45 = v12;
        v46 = v9;
        v47 = v59;
        (*v56)(v59, v31, v0);
        v48 = objc_allocWithZone(NSBundle);
        sub_1004B6A44(v49);
        v51 = v50;
        v52 = [v48 initWithURL:v50];

        v31 = v60;
        v53 = v47;
        v9 = v46;
        v12 = v45;
        v38 = v44;
        v39 = v58;
        (*v61)(v53, v0);
        sub_1002AD494(v12);
        if (v52)
        {

          return v52;
        }
      }

      ++v40;
      v41 += v63;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004BD624();
  __break(1u);
  return result;
}

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = sub_1004BCEE4();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_100609A40 != -1)
  {
    swift_once();
  }

  v0 = qword_10060A790;
  v1 = qword_10060A790;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = sub_1004B8724();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = sub_1004B6CD4();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004B8724();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004B8724();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v0 = swift_unknownObjectWeakInit();
  *(v0 + 8) = 2;
  *(v0 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v0 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v0 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100051DEC(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&qword_10060EF20);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1002AACD8(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v2 - 8);
  sub_10000F778(a1, &v5 - v3, &qword_10060A208);
  return sub_1004B9024();
}

double variable initialization expression of HitMyRectButton.hitRectAdjustment@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_1002ABDC0(v2, a1);
}

double sub_1002AAF6C@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_1002ABE24(&v15, &v14);
  sub_1002ABE80(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_1003BA0D8(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (qword_100609D48 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:qword_100619268];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_1002AB508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B9094();
  *a1 = result;
  return result;
}

uint64_t sub_1002AB588@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100003ABC(a1);

  return swift_storeEnumTagMultiPayload();
}

id sub_1002AB600(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  sub_1003B4F64(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_100609DA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_100619418;
  v2 = qword_100619420;
  v3 = qword_100619428;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003B53E0(v1, v0, v2, v3);
  sub_1003B55A0();

  return v8;
}

uint64_t sub_1002AB99C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return sub_1003D137C();
}

uint64_t sub_1002ABCC4(uint64_t a1, uint64_t a2)
{
  result = sub_1004B71A4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1002ABD18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B71B4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1002ABD70@<X0>(void *a1@<X8>)
{
  result = sub_1004B71C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1002ABDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1002ABEE8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_1002ABF98()
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_1002AC000()
{
  sub_1002ACA40(&qword_10060A1F8, type metadata accessor for UIContentSizeCategory);
  sub_1002ACA40(&qword_10060A200, type metadata accessor for UIContentSizeCategory);

  return sub_1004BD744();
}

uint64_t sub_1002AC0BC()
{
  sub_1002ACA40(&qword_10060A1E8, type metadata accessor for TextStyle);
  sub_1002ACA40(&qword_10060A1F0, type metadata accessor for TextStyle);

  return sub_1004BD744();
}

uint64_t sub_1002AC178()
{
  sub_1002ACA40(&qword_10060A1D0, type metadata accessor for Weight);
  sub_1002ACA40(&qword_10060A1D8, type metadata accessor for Weight);
  sub_1002AD3D0();
  return sub_1004BD744();
}

uint64_t sub_1002AC240()
{
  sub_1002ACA40(&qword_10060A1C0, type metadata accessor for FeatureKey);
  sub_1002ACA40(&qword_10060A1C8, type metadata accessor for FeatureKey);

  return sub_1004BD744();
}

uint64_t sub_1002AC2FC()
{
  sub_1002ACA40(&qword_10060A1B0, _s3__C13AttributeNameVMa_0);
  sub_1002ACA40(&qword_10060A1B8, _s3__C13AttributeNameVMa_0);

  return sub_1004BD744();
}

uint64_t sub_1002AC3B8()
{
  sub_1002ACA40(&qword_10060A248, _s3__C4NameVMa_1);
  sub_1002ACA40(&unk_10060A250, _s3__C4NameVMa_1);

  return sub_1004BD744();
}

uint64_t sub_1002AC474()
{
  sub_1002ACA40(&qword_10060A190, type metadata accessor for CAGradientLayerType);
  sub_1002ACA40(&qword_10060A198, type metadata accessor for CAGradientLayerType);

  return sub_1004BD744();
}

uint64_t sub_1002AC530()
{
  sub_1002ACA40(&qword_10060A1A0, type metadata accessor for InfoKey);
  sub_1002ACA40(&qword_10060A1A8, type metadata accessor for InfoKey);

  return sub_1004BD744();
}

uint64_t sub_1002AC5EC()
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

void sub_1002AC660()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004BDBE4(*&v1);
}

__n128 sub_1002AC750(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1002AC774(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002AC794(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1002AC7F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1002AC828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlowModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1002ACA40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002AD3D0()
{
  result = qword_10060A1E0;
  if (!qword_10060A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A1E0);
  }

  return result;
}

uint64_t sub_1002AD424(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060A210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AD494(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060A210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_1002AD694(*v0, v0[1]);
  return v1;
}

id sub_1002AD694(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_1002AD70C(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

void sub_1002AD70C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_1002AD898(a1, v3);
}

uint64_t sub_1002AD898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_1004C5090;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = sub_1004BCEE4();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_1004C5090;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = sub_1004BCEE4();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *sub_1002ADD18(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B353C(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  sub_1002B36F4(&qword_10060A488, type metadata accessor for Artwork.View);
  return v5;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  sub_1002B353C(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  sub_1002AE958();
  sub_1002AF7E0();
  sub_1002AF360();

  sub_1002B4234(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_1004BD624();
  __break(1u);
}

void sub_1002AE1D8(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  sub_1002B353C(v6, v5, type metadata accessor for Artwork);
  v7 = _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1002B4234(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    sub_1002AE958();
    sub_1002AF7E0();
    sub_1002AF360();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        sub_1002AE958();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_1002AE958();
}

uint64_t Artwork.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_1002B353C(v1 + v3, a1, type metadata accessor for Artwork);
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v6, v5, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002B35A4(a1, v1 + v6);
  swift_endAccess();
  sub_1002AE1D8(v5);
  sub_1002B4234(a1, type metadata accessor for Artwork);
  return sub_1002B4234(v5, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1002B353C(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_1002AE688;
}

void sub_1002AE688(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1002B353C(*(*a1 + 96), v6, type metadata accessor for Artwork);
    sub_1002B353C(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002B35A4(v6, v7 + v4);
    swift_endAccess();
    sub_1002AE1D8(v5);
    sub_1002B4234(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_1002B353C(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002B35A4(v3, v7 + v4);
    swift_endAccess();
    sub_1002AE1D8(v6);
  }

  sub_1002B4234(v6, type metadata accessor for Artwork);
  sub_1002B4234(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6);
}

void sub_1002AE958()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      sub_1002B4294(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      LOBYTE(ObjectType) = v6[8];
      v6[8] = 1;
      v13 = v11;
      sub_1002B1104(v12, ObjectType);
      sub_1002B3FDC(v12, ObjectType);
      swift_unknownObjectRelease();

      v14 = v8;
      v15 = v7;
LABEL_20:
      sub_1002B3FDC(v14, v15);
      goto LABEL_27;
    }

    v16 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v17 = [v16 image];
    if (v17)
    {
    }

    else
    {
      v33 = [v1 artworkCatalog];
      if (v33)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v34 = swift_getObjectType();
    v35 = (*(v5 + 8))(0, v34, v5);
    v36 = *v6;
    *v6 = v35;
    v37 = v6[8];
    v6[8] = 1;
    v38 = v35;
    sub_1002B1104(v36, v37);
    sub_1002B3FDC(v36, v37);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v18 = &v2[*(v3 + 32)];
  v19 = *(v18 + 3);
  if (!v19)
  {
    v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v40 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v39 = 0;
    v41 = v39[8];
    v39[8] = -1;
    sub_1002B1104(v40, v41);
    v14 = v40;
    v15 = v41;
    goto LABEL_20;
  }

  v21 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v23 = *(v18 + 4);
  v24 = *(v18 + 5);
  *&v80 = *v18;
  *(&v80 + 1) = v20;
  *&v81 = v22;
  *(&v81 + 1) = v19;
  *&v82 = v23;
  *(&v82 + 1) = v24;
  v25 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v26 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v26 == 255 || (v26 & 1) != 0)
  {
    v27 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v28 = v22;
    v29 = v19;
    v30 = v21;
    v31 = v20;
    v32 = [v27 image];
    if (v32)
    {
    }

    else
    {
      v51 = [v1 artworkCatalog];
      if (v51)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v52 = type metadata accessor for Artwork.Placeholder.View();
    v53 = objc_allocWithZone(v52);
    v54 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v55 = objc_allocWithZone(UIImageView);
    v56 = v30;
    v77 = v31;
    v57 = v28;
    v58 = v29;
    *&v53[v54] = [v55 init];
    v59 = &v53[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v60 = v82;
    *(v59 + 1) = v81;
    *(v59 + 2) = v60;
    *v59 = v80;
    v78.receiver = v53;
    v78.super_class = v52;
    v61 = v56;
    v62 = v77;
    v63 = v57;
    v64 = v58;
    v65 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v65 addSubview:*&v65[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    sub_1002B4D34(&v83);

    v66 = v62;
    v67 = v61;
    v68 = *v25;
    *v25 = v65;
    LOBYTE(v62) = v25[8];
    v25[8] = 0;
    v69 = v65;
    sub_1002B1104(v68, v62);
    sub_1002B3FDC(v68, v62);

    goto LABEL_27;
  }

  v42 = *v25;
  v43 = *v25 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v44 = *(v43 + 16);
  v83 = *v43;
  v84 = v44;
  v74 = *(v43 + 8);
  v75 = *v43;
  v72 = *(v43 + 24);
  v73 = *(v43 + 16);
  v70 = *(v43 + 40);
  v71 = *(v43 + 32);
  v87 = *(&v83 + 1);
  v88 = v83;
  v76 = *(&v44 + 1);
  v86 = v44;
  v85 = *(v43 + 32);
  v45 = v80;
  v46 = v82;
  *(v43 + 16) = v81;
  *(v43 + 32) = v46;
  *v43 = v45;
  sub_1002B42A8(v21, v20, v22, v19);
  sub_1002B4294(v42, v26);
  v47 = v22;
  v48 = v19;
  v49 = v21;
  v50 = v20;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(&v80, &v83))
  {
    v79[0] = v75;
    v79[1] = v74;
    v79[2] = v73;
    v79[3] = v72;
    v79[4] = v71;
    v79[5] = v70;
    sub_1002B4D34(v79);
  }

  sub_1002B3FDC(v42, v26);
  sub_100007214(&v88, &qword_10060A768);
  sub_100007214(&v87, &qword_10060A768);
  sub_100007214(&v86, &qword_10060A770);

LABEL_27:
  sub_1002B0FCC();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  Artwork.View.fittingImageSize(in:)(v5, v6);
  v8 = v7;
  v10 = v9;
  v11 = [v0 contentMode];
  if (v11 > 5)
  {
    if (v11 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v8;
      v32.size.height = v10;
      v4 = MaxY - CGRectGetHeight(v32);
    }

    else if (v11 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v2;
      v30.origin.y = v4;
      v30.size.width = v8;
      v30.size.height = v10;
      v2 = MaxX - CGRectGetWidth(v30);
    }
  }

  v14 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  sub_1004BCD84();
  [v14 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v8, v10}];
  }

  v15 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v22;
  v34.size.height = v23;
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  if (!CGRectEqualToRect(v33, v34))
  {
    [v0 bounds];
    *v15 = v24;
    *(v15 + 1) = v25;
    *(v15 + 2) = v26;
    *(v15 + 3) = v27;
    sub_1002AF360();
  }

  sub_1002AF7E0();
}

void Artwork.View.fittingImageSize(in:)(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  sub_1004BCDF4();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  sub_1004BCDF4();
  if (sub_1004B70D4())
  {
    sub_1004BCDF4();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      sub_1004BCDF4();
    }
  }
}

id sub_1002AF360()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    sub_1002B0760(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      sub_10000F778((v4 + 16), v48, &qword_10060A3E0);
      sub_10000F778(v48, &v46, &qword_10060A3E0);
      if (v47)
      {
        v11 = v10;

        sub_1002B40D8(&v46);
      }

      else
      {
        v13 = v10;
        sub_100007214(&v46, &qword_10060A3E0);
      }

      v14 = sub_1004BBE24();

      sub_10000F778(v48, &v46, &qword_10060A3E0);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        sub_1002B40D8(&v46);
      }

      else
      {
        sub_100007214(&v46, &qword_10060A3E0);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        sub_1002B1FE8(v27, v29, v25, v19);
        v32 = v31;
        sub_1002B1FE8(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return sub_100007214(v48, &qword_10060A3E0);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, sub_1002B40D0, v45, ObjectType);

      return sub_100007214(v48, &qword_10060A3E0);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    sub_1002B0760(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1002AF7E0()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_10060A760);
  v3 = __chkstk_darwin(v2 - 8);
  v103 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v101 = (&v100 - v6);
  v7 = __chkstk_darwin(v5);
  v113 = &v100 - v8;
  v9 = __chkstk_darwin(v7);
  v109 = &v100 - v10;
  v11 = __chkstk_darwin(v9);
  v106 = (&v100 - v12);
  v13 = __chkstk_darwin(v11);
  v110 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v105 = &v100 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = (&v100 - v18);
  __chkstk_darwin(v17);
  v21 = &v100 - v20;
  v22 = sub_100003ABC(&qword_100610D00);
  v23 = __chkstk_darwin(v22 - 8);
  v102 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v28 = __chkstk_darwin(v25);
  v104 = &v100 - v29;
  __chkstk_darwin(v28);
  v31 = &v100 - v30;
  v32 = type metadata accessor for Artwork.Decoration(0);
  v116 = *(v32 - 1);
  __chkstk_darwin(v32);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v107 frame];
  v36 = v35;
  v38 = v37;
  v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v111 = type metadata accessor for Artwork(0);
  v112 = v39;
  v40 = &v39[v111[7]];
  v117 = v34;
  sub_1002B353C(v40, v34, type metadata accessor for Artwork.Decoration);
  v41 = *(v40 + v32[7]);
  [v1 bounds];
  if ((v41 & 1) != 0 && (v46 = v42, v47 = v43, v48 = v44, v49 = v45, Width = CGRectGetWidth(*&v42), v45 = v49, v44 = v48, v43 = v47, v51 = Width, v42 = v46, v36 < v51) || (v41 & 2) != 0 && v38 < CGRectGetHeight(*&v42))
  {
    v52 = v117;
    sub_10000F778(&v117[v32[5]], v31, &qword_100610D00);
    v53 = sub_1004BCEE4();
    v54 = (*(*(v53 - 8) + 48))(v31, 1, v53) != 1;
    sub_100007214(v31, &qword_100610D00);
    v55 = v54;
    v56 = 1;
    [v1 setClipsToBounds:v55];
    v57 = *(v52 + v32[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v57 = [objc_opt_self() clearColor];
    v56 = 0;
  }

  [v1 setBackgroundColor:v57];

  v58 = v116;
  v108 = v27;
  v115 = v56;
  if (v56)
  {
    sub_1002B353C(v117, v21, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v114 = v58[7];
  v114(v21, v59, 1, v32);
  sub_10000F778(v21, v19, &qword_10060A760);
  v116 = v58[6];
  if ((v116)(v19, 1, v32) == 1)
  {
    v60 = v1;
    sub_100007214(v19, &qword_10060A760);
    v61 = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
  }

  else
  {
    v61 = *v19;
    v62 = v19[1];
    v63 = v19[2];
    v64 = v63;
    v65 = v1;
    sub_1002B4234(v19, type metadata accessor for Artwork.Decoration);
  }

  v66 = v110;
  UIView.border.setter(v61, v62, v63);
  v67 = v105;
  sub_10000F778(v21, v105, &qword_10060A760);
  v68 = v116;
  if ((v116)(v67, 1, v32) == 1)
  {
    sub_100007214(v67, &qword_10060A760);
    v69 = sub_1004BCEE4();
    (*(*(v69 - 8) + 56))(v104, 1, 1, v69);
  }

  else
  {
    sub_10000F778(v67 + v32[5], v104, &qword_100610D00);
    sub_1002B4234(v67, type metadata accessor for Artwork.Decoration);
  }

  v70 = v107;
  sub_1004BCEF4();

  sub_100007214(v21, &qword_10060A760);
  if (v115)
  {
    v71 = 1;
  }

  else
  {
    sub_1002B353C(v117, v66, type metadata accessor for Artwork.Decoration);
    v71 = 0;
  }

  v72 = v106;
  v114(v66, v71, 1, v32);
  sub_10000F778(v66, v72, &qword_10060A760);
  if (v68(v72, 1, v32) == 1)
  {
    v73 = v70;
    sub_100007214(v72, &qword_10060A760);
    v74 = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
  }

  else
  {
    v74 = *v72;
    v75 = v72[1];
    v76 = v72[2];
    v77 = v76;
    v78 = v70;
    sub_1002B4234(v72, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v74, v75, v76);
  v79 = v109;
  sub_10000F778(v66, v109, &qword_10060A760);
  v80 = v116;
  if ((v116)(v79, 1, v32) == 1)
  {
    sub_100007214(v79, &qword_10060A760);
    v81 = sub_1004BCEE4();
    (*(*(v81 - 8) + 56))(v108, 1, 1, v81);
  }

  else
  {
    sub_10000F778(v79 + v32[5], v108, &qword_100610D00);
    sub_1002B4234(v79, type metadata accessor for Artwork.Decoration);
  }

  sub_1004BCEF4();

  sub_100007214(v66, &qword_10060A760);
  v82 = &v112[v111[9]];
  v86 = *v82 && (v83 = *(v82 + 1), ObjectType = swift_getObjectType(), v85 = *(v83 + 16), swift_unknownObjectRetain(), LOBYTE(v83) = v85(ObjectType, v83), swift_unknownObjectRelease(), (v83 & 1) != 0) && *&v112[v111[8] + 24] == 0;
  v87 = v113;
  if ((v115 | v86))
  {
    v88 = 1;
  }

  else
  {
    sub_1002B353C(v117, v113, type metadata accessor for Artwork.Decoration);
    v88 = 0;
  }

  v114(v87, v88, 1, v32);
  v89 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v89 != 255)
  {
    v90 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v91 = v101;
    sub_10000F778(v87, v101, &qword_10060A760);
    if (v80(v91, 1, v32) == 1)
    {
      v92 = v90;
      sub_100007214(v91, &qword_10060A760);
      v93 = 0;
      LOBYTE(v94) = 0;
      v95 = 0;
    }

    else
    {
      v93 = *v91;
      v94 = v91[1];
      v95 = v91[2];
      sub_1002B4294(v90, v89);
      sub_1002B4294(v90, v89);
      v96 = v95;
      sub_1002B4234(v91, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v93, v94, v95);
    v87 = v113;
    v97 = v103;
    sub_10000F778(v113, v103, &qword_10060A760);
    if (v80(v97, 1, v32) == 1)
    {
      sub_100007214(v97, &qword_10060A760);
      v98 = sub_1004BCEE4();
      (*(*(v98 - 8) + 56))(v102, 1, 1, v98);
    }

    else
    {
      sub_10000F778(v97 + v32[5], v102, &qword_100610D00);
      sub_1002B4234(v97, type metadata accessor for Artwork.Decoration);
    }

    sub_1004BCEF4();
    sub_1002B3FDC(v90, v89);
    sub_1002B3FDC(v90, v89);
  }

  sub_100007214(v87, &qword_10060A760);
  return sub_1002B4234(v117, type metadata accessor for Artwork.Decoration);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 40);
  }

  else
  {
    v3 = 0.0;
    v2 = 0.0;
  }

  Artwork.View.fittingImageSize(in:)(v3, v2);
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v6 = *(v5 + 48);
  if (v6 == 255)
  {
    Artwork.View.fittingImageSize(in:)(a1, a2);
  }

  else
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 40);
    v9 = *(v5 + 64);
    sub_1002B1FE8(a1, a2, v8, v6);
    sub_1002B1FE8(a1, a2, v7, v9);
  }
}

double Artwork.Size.computedSize(in:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  sub_1002B1FE8(a5, a6, a1, a2);
  v11 = v10;
  sub_1002B1FE8(a5, a6, a3, a4);
  return v11;
}

uint64_t sub_1002B0760(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  sub_1002AE958();
LABEL_12:
  sub_1002B0FCC();
  sub_1002AF7E0();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {

    v11(v12);
    return sub_10003CC4C(v11);
  }

  return result;
}

void sub_1002B08C0(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v18 = v5;
  v8 = [a2 imageRepresentation];
  if (v8)
  {
    v17 = v8;
    v9 = [v8 image];
    if (v9)
    {
      v10 = v9;
      if (([v17 isImagePrepared] & 1) == 0)
      {
        v13 = swift_allocObject();
        v13[2] = a3;
        v13[3] = v10;
        v13[4] = v7;
        aBlock[4] = sub_1002B4150;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100207FC0;
        aBlock[3] = &unk_1005BF018;
        v14 = _Block_copy(aBlock);
        v15 = v18;
        v16 = v10;

        [v16 prepareForDisplayWithCompletionHandler:v14];

        _Block_release(v14);
        return;
      }

      v11 = v10;
      sub_1002B0760(v10);

      [v7 setNeedsLayout];
      v12 = v17;
      goto LABEL_8;
    }
  }

  sub_1002B0760(0);
  [v7 setNeedsLayout];
  v12 = v18;
LABEL_8:
}

uint64_t sub_1002B0AC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1004BA8F4();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BA924();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_10060E4F0);
  v22 = sub_1004BCB44();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1002B41C4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005BF068;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002B36F4(&qword_10060A738, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_10060A740);
  sub_1002B41D0();
  sub_1004BD2D4();
  v19 = v22;
  sub_1004BCB54();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_1002B0DAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      sub_1002B0760(a2);
    }

    else
    {
      if (qword_100609C18 != -1)
      {
        swift_once();
      }

      v12 = sub_1004B80B4();
      sub_100007084(v12, static Logger.artwork);
      v13 = a3;
      v14 = sub_1004B8094();
      v15 = sub_1004BC984();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        sub_100007214(v17, &qword_10060A750);
      }

      sub_1002B0760(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  sub_100009130(0, &qword_10060A758);
  v10 = sub_1004BCFA4();

  if (v10)
  {
    goto LABEL_7;
  }
}

void sub_1002B0FCC()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      sub_1002B3FDC(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

void sub_1002B1104(void *a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    sub_1002B4294(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_1002B4294(a1, a2);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      sub_100009130(0, &qword_100611200);
      sub_1002B4294(v6, v10);
      sub_1002B4294(a1, a2);
      v11 = sub_1004BCFA4();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_1002B4294(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_1002B4294(a1, a2);
    v8 = v6;
  }

LABEL_16:
  if (a2 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    sub_1002B3FDC(v13, v12);
  }
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

void (*sub_1002B1400(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return sub_1002B1470;
}

void sub_1002B1470(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1002B14B8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = sub_1002B36F4(&qword_10060A438, type metadata accessor for Artwork);
  v3 = sub_1000133B0(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_1002B353C(v1 + v4, v3, type metadata accessor for Artwork);
}

uint64_t sub_1002B1578(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  v4 = __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v4);
  v8 = v12 - v7 + 40;
  sub_10001342C(a1, v12);
  sub_100003ABC(&qword_10060A730);
  swift_dynamicCast();
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v9, v6, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002B35A4(v8, v1 + v9);
  swift_endAccess();
  sub_1002AE1D8(v6);
  sub_1002B4234(v8, type metadata accessor for Artwork);
  sub_1002B4234(v6, type metadata accessor for Artwork);
  return sub_100004C6C(a1);
}

void (*sub_1002B16F4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = sub_1002B36F4(&qword_10060A438, type metadata accessor for Artwork);
  v5 = sub_1000133B0(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002B353C(v1 + v6, v5, type metadata accessor for Artwork);
  return sub_1002B17F8;
}

void sub_1002B17F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10001342C(*a1, v2 + 40);
    sub_1002B1578(v2 + 40);
    sub_100004C6C(v2);
  }

  else
  {
    sub_1002B1578(*a1);
  }

  free(v2);
}

uint64_t sub_1002B1860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

uint64_t Artwork.Caching.reference.setter()
{
  swift_weakAssign();
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_1002B1944;
}

uint64_t sub_1002B1944()
{
  swift_weakAssign();
}

uint64_t Artwork.Caching.init(reference:identifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_weakInit();
  *a3 = a1;
  a3[1] = a2;
  swift_weakAssign();
}

uint64_t Artwork.Caching.init(reference:)@<X0>(void *a1@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000100507380;
  return result;
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100009130(0, &unk_1006111F0);
  if (sub_1004BCFA4())
  {
    if (a2)
    {
      if (a4)
      {
        sub_100009130(0, &qword_10060DF30);
        v6 = a4;
        v7 = a2;
        v8 = sub_1004BCFA4();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002B1B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_100009130(0, &unk_1006111F0);
  if (sub_1004BCFA4())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100009130(0, &qword_10060DF30);
        v4 = v3;
        v5 = v2;
        v6 = sub_1004BCFA4();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = sub_1004BCEE4();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

uint64_t sub_1002B1FE8(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    sub_1004BD404(67);
    v9._countAndFlagsBits = 0x6F69736E656D6944;
    v9._object = 0xE90000000000006ELL;
    sub_1004BC024(v9);
    v10._object = 0x8000000100507560;
    v10._countAndFlagsBits = 0xD000000000000030;
    sub_1004BC024(v10);
    v11._countAndFlagsBits = sub_1004BCE04();
    sub_1004BC024(v11);

    v12._countAndFlagsBits = 0x696C61766E49203ALL;
    v12._object = 0xEF68746469772064;
    sub_1004BC024(v12);
LABEL_10:
    result = sub_1004BD624();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    sub_1004BD404(68);
    v5._countAndFlagsBits = 0x6F69736E656D6944;
    v5._object = 0xE90000000000006ELL;
    sub_1004BC024(v5);
    v6._object = 0x8000000100507560;
    v6._countAndFlagsBits = 0xD000000000000030;
    sub_1004BC024(v6);
    v7._countAndFlagsBits = sub_1004BCE04();
    sub_1004BC024(v7);

    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x80000001005075A0;
    sub_1004BC024(v8);
    goto LABEL_10;
  }

  return result;
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_1002B226C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1002B23B8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  sub_100007108(v10, a2);
  v11 = sub_100007084(v10, a2);
  if (qword_100609B18 != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_100618F08;
  v14 = *a3;
  v15 = qword_100618F10;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1004BCEE4();
  v17 = sub_100007084(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = sub_1002B3FF0(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t sub_1002B25E8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Artwork.Decoration(0);

  return sub_100007084(v3, a2);
}

uint64_t sub_1002B2660()
{
  v0 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for Artwork.Decoration(0);
  sub_100007108(v3, static Artwork.Decoration.round);
  v4 = sub_100007084(v3, static Artwork.Decoration.round);
  if (qword_100609B18 != -1)
  {
    swift_once();
  }

  v5 = static UIView.Border.artwork;
  v6 = byte_100618F08;
  v7 = qword_100618F10;
  v8 = qword_100618F10;
  sub_1004BCED4();
  v9 = sub_1004BCEE4();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  v10 = [objc_opt_self() blackColor];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  result = sub_1002B3FF0(v2, v4 + v3[5]);
  *(v4 + v3[6]) = v10;
  *(v4 + v3[7]) = 1;
  return result;
}

uint64_t sub_1002B2838@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Artwork.Decoration(0);
  v6 = sub_100007084(v5, a2);
  return sub_1002B353C(v6, a3, type metadata accessor for Artwork.Decoration);
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1004BCE94();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v30 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  sub_1002B353C(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v17 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v18;
    *(a3 + 8) = v17 & 1;
  }

  v31 = a1;
  v32 = a2;
  v19 = type metadata accessor for Artwork.Decoration(0);
  sub_10000F778(v4 + *(v19 + 20), v10, &qword_100610D00);
  v20 = sub_1004BCEE4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v10, 1, v20) == 1)
  {
    return sub_100007214(v10, &qword_100610D00);
  }

  sub_1004BCEB4();
  (*(v21 + 8))(v10, v20);
  v24 = (*(v12 + 88))(v16, v11);
  if (v24 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v12 + 8))(v16, v11);
  }

  v25 = v24;
  (*(v12 + 96))(v16, v11);
  result = (v22)(a3 + *(v19 + 20), 1, v20);
  if (!result)
  {
    v26 = v16[8];
    [v31 scaledValueForValue:v32 compatibleWithTraitCollection:*v16];
    v27 = v30;
    *v30 = v28;
    *(v27 + 8) = v26;
    (*(v12 + 104))(v27, v25, v11);
    return sub_1004BCEC4();
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = sub_1004BD9C4(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1004BCEE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v8 - 8);
  v36 = &v33 - v9;
  v10 = sub_100003ABC(&qword_10060A778);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = a1[2];
  v14 = a2[2];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v34 = v4;
    v35 = v7;
    v16 = *a1;
    v15 = a1[1];
    v33 = v5;
    v17 = a1;
    v19 = *a2;
    v18 = a2[1];
    v20 = v14;
    v38 = v15 & 1;
    v21 = v18 & 1;
    a1 = v17;
    v37 = v21;
    v22 = v19;
    v5 = v33;
    v4 = v34;
    v23 = static UIView.Border.__derived_struct_equals(_:_:)(v16, v15 & 1, v13, v22, v21);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v35 = v7;
    if (v14)
    {
      return 0;
    }
  }

  v24 = type metadata accessor for Artwork.Decoration(0);
  v25 = *(v24 + 20);
  v26 = *(v10 + 48);
  sub_10000F778(a1 + v25, v12, &qword_100610D00);
  sub_10000F778(a2 + v25, &v12[v26], &qword_100610D00);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) != 1)
  {
    v28 = v36;
    sub_10000F778(v12, v36, &qword_100610D00);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v29 = v35;
      (*(v5 + 32))(v35, &v12[v26], v4);
      sub_1002B36F4(&qword_10060A780, &type metadata accessor for UIView.Corner);
      v30 = sub_1004BBD84();
      v31 = *(v5 + 8);
      v31(v29, v4);
      v31(v28, v4);
      sub_100007214(v12, &qword_100610D00);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v28, v4);
LABEL_11:
    sub_100007214(v12, &qword_10060A778);
    return 0;
  }

  if (v27(&v12[v26], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_100007214(v12, &qword_100610D00);
LABEL_13:
  sub_100009130(0, &unk_1006111F0);
  if (sub_1004BCFA4())
  {
    return *(a1 + *(v24 + 28)) == *(a2 + *(v24 + 28));
  }

  return 0;
}

BOOL _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    sub_100009130(0, &unk_1006111F0);
    v7 = v6;
    v8 = v4;
    if (sub_1004BCFA4())
    {
      if (v5)
      {
        if (v6)
        {
          sub_100009130(0, &qword_10060DF30);
          v9 = v7;
          v10 = v5;
          v11 = sub_1004BCFA4();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  sub_10000F778(a1 + 16, &v43, &qword_10060A3E0);
  sub_10000F778(a2 + 16, &v46, &qword_10060A3E0);
  if (!v44)
  {
    if (!v47)
    {
      sub_100007214(&v43, &qword_10060A3E0);
      goto LABEL_15;
    }

LABEL_22:
    sub_100007214(&v43, &qword_10060A788);
    return 0;
  }

  sub_10000F778(&v43, v42, &qword_10060A3E0);
  if (!v47)
  {
    sub_1002B40D8(v42);
    goto LABEL_22;
  }

  sub_1002B4358(&v46, v41);
  v12 = _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(v42, v41);
  sub_1002B40D8(v41);
  sub_1002B40D8(v42);
  sub_100007214(&v43, &qword_10060A3E0);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (_s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 40), v13, *(a1 + 56), *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!_s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      sub_1002B42A8(v31, v25, v27, v28);
      sub_1002B42A8(v18, v32, v33, v21);
      v34 = _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v43);

      sub_1002B4300(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    sub_1002B42A8(*v24, v38, v27, v28);
    sub_1002B42A8(v18, v19, v35, v21);
    sub_1002B4300(v18, v19, v35, v21);
    sub_1002B4300(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

uint64_t sub_1002B353C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B35A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B3670(uint64_t a1)
{
  *(a1 + 8) = sub_1002B36F4(&qword_10060A430, type metadata accessor for Artwork);
  result = sub_1002B36F4(&qword_10060A438, type metadata accessor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002B36F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B3784(uint64_t a1)
{
  result = sub_1002B36F4(&qword_10060A488, type metadata accessor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002B37F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Artwork.Decoration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1002B38BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork.Decoration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002B3960()
{
  sub_100029A78(319, &qword_10060A4F8);
  if (v0 <= 0x3F)
  {
    sub_100029A78(319, &qword_10060A500);
    if (v1 <= 0x3F)
    {
      sub_100029A78(319, &qword_10060A508);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v3 <= 0x3F)
        {
          sub_100029A78(319, &qword_10060A510);
          if (v4 <= 0x3F)
          {
            sub_1002B3A84();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002B3A84()
{
  if (!qword_10060A518)
  {
    sub_100003B68(&unk_10060A520);
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060A518);
    }
  }
}

uint64_t sub_1002B3AF0()
{
  result = type metadata accessor for Artwork(319);
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

uint64_t sub_1002B3C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_100610D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002B3CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003ABC(&qword_100610D00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1002B3DAC()
{
  sub_100029A78(319, &unk_100610E60);
  if (v0 <= 0x3F)
  {
    sub_1002B3E80();
    if (v1 <= 0x3F)
    {
      sub_100009130(319, &qword_10060DF30);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIAxis(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002B3E80()
{
  if (!qword_10060A6F8)
  {
    sub_1004BCEE4();
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060A6F8);
    }
  }
}

__n128 sub_1002B3ED8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002B3EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
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

uint64_t sub_1002B3F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Artwork.Size.Dimension(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1002B3FDC(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1002B3FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100610D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B4060()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002B4098()
{

  return swift_deallocObject();
}

uint64_t sub_1002B4108()
{

  return swift_deallocObject();
}

uint64_t sub_1002B415C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B4174()
{

  return swift_deallocObject();
}

unint64_t sub_1002B41D0()
{
  result = qword_10060A748;
  if (!qword_10060A748)
  {
    sub_100003B68(&qword_10060A740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A748);
  }

  return result;
}

uint64_t sub_1002B4234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1002B4294(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id sub_1002B42A8(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

void sub_1002B4300(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t a1)
{
  sub_1002B9688(a1);
  v4 = *a1;
  sub_100007214(&v4, &qword_10060A768);
  v3 = *(a1 + 8);
  sub_100007214(&v3, &qword_10060A768);
  v2 = *(a1 + 16);
  sub_100007214(&v2, &qword_10060A770);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_1002B44A0()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_10060A790 = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    swift_once();
  }

  v5 = qword_10060A790;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_1004D9AE0;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

uint64_t Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v20 = v3[1];
  v21 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v18 = 0;
  v19 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002B981C;
  *(v10 + 24) = v8;
  aBlock[4] = sub_100124268;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011FE68;
  aBlock[3] = &unk_1005BF0E0;
  v11 = _Block_copy(aBlock);
  sub_10000F778(&v21, v16, &qword_10060A768);
  sub_10000F778(&v20, v16, &qword_10060A768);
  sub_10000F778(&v19, v16, &qword_10060A770);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

void sub_1002B48A0(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      sub_1004BCD94();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_10000F778(&v18, v19, &qword_10060A768);
  sub_10000F778(&v17, v19, &qword_10060A768);
  sub_10000F778(&v16, v19, &qword_10060A770);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *&v11[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  sub_1002B4D34(v19);
  sub_100007214(&v18, &qword_10060A768);
  sub_100007214(&v17, &qword_10060A768);
  sub_100007214(&v16, &qword_10060A770);

  return v13;
}

void sub_1002B4D34(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  sub_100009130(0, &qword_10060F560);
  v24 = v12;
  v25 = sub_1004BCFA4();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  sub_100009130(0, &unk_1006110C0);
  v26 = v9;
  v27 = v4;
  v28 = sub_1004BCFA4();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  sub_1004BD624();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return sub_1002B5200;
}

void sub_1002B5200(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 392) = *(v2 + 18);
    v8 = *(v2 + 39);
    *(v2 + 51) = *(v2 + 38);
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    *(v2 + 46) = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    sub_10000F778((v2 + 392), (v2 + 456), &qword_10060A768);
    sub_10000F778((v2 + 400), (v2 + 456), &qword_10060A768);
    sub_10000F778((v2 + 408), (v2 + 456), &qword_10060A770);
    v15 = v8;
    sub_10000F778((v2 + 392), (v2 + 456), &qword_10060A768);
    sub_10000F778((v2 + 400), (v2 + 456), &qword_10060A768);
    sub_10000F778((v2 + 408), (v2 + 456), &qword_10060A770);
    v16 = v15;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 288), v2))
    {
      *(v2 + 30) = v11;
      *(v2 + 31) = v12;
      *(v2 + 32) = v13;
      *(v2 + 33) = v36;
      *(v2 + 34) = v35;
      *(v2 + 35) = v34;
      sub_1002B4D34((v2 + 240));
    }

    sub_100007214((v2 + 368), &qword_10060A768);
    *(v2 + 47) = *(v2 + 1);
    sub_100007214((v2 + 376), &qword_10060A768);
    v17 = *(v2 + 3);
    *(v2 + 48) = *(v2 + 2);
    sub_100007214((v2 + 384), &qword_10060A770);

    sub_100007214((v2 + 392), &qword_10060A768);
    sub_100007214((v2 + 400), &qword_10060A768);
    sub_100007214((v2 + 408), &qword_10060A770);

    v18 = *(v2 + 6);
    v19 = *(v2 + 7);
    v20 = *(v2 + 8);
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    *(v2 + 54) = *(v2 + 24);
    v31 = *(v2 + 21);
    *(v2 + 45) = *(v2 + 20);
    *(v2 + 440) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    sub_10000F778((v2 + 440), (v2 + 456), &qword_10060A768);
    sub_10000F778((v2 + 448), (v2 + 456), &qword_10060A768);
    sub_10000F778((v2 + 360), (v2 + 456), &qword_10060A770);
    v20 = v31;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 144), (v2 + 192)))
    {
      *(v2 + 12) = v37;
      *(v2 + 13) = v26;
      *(v2 + 14) = v27;
      *(v2 + 15) = v28;
      *(v2 + 16) = v29;
      *(v2 + 17) = v30;
      sub_1002B4D34((v2 + 96));
    }

    sub_100007214((v2 + 432), &qword_10060A768);
    *(v2 + 53) = *(v2 + 25);
    sub_100007214((v2 + 424), &qword_10060A768);
    v33 = *(v2 + 27);
    *(v2 + 52) = *(v2 + 26);
    sub_100007214((v2 + 416), &qword_10060A770);

    sub_100007214((v2 + 440), &qword_10060A768);
    sub_100007214((v2 + 448), &qword_10060A768);
    sub_100007214((v2 + 360), &qword_10060A770);
  }

  free(v2);
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  sub_1004BCD84();
  [v1 setFrame:?];
}

id sub_1002B5874@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void sub_1002B5900(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  sub_1002B9688(&v2);
  v5 = v2;
  sub_100007214(&v5, &qword_10060A768);
  v6 = *(&v2 + 1);
  sub_100007214(&v6, &qword_10060A768);
  v7 = v3;
  sub_100007214(&v7, &qword_10060A770);
}

void (*sub_1002B59A4(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return sub_1002B1470;
}

id sub_1002B5A14@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = sub_1002B9E1C();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t sub_1002B5AD0(uint64_t a1)
{
  sub_10001342C(a1, v6);
  sub_100003ABC(&qword_10060A730);
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_1002B9688(&v7);
  v10 = v7;
  sub_100007214(&v10, &qword_10060A768);
  v11 = *(&v7 + 1);
  sub_100007214(&v11, &qword_10060A768);
  v12 = v8;
  sub_100007214(&v12, &qword_10060A770);

  return sub_100004C6C(a1);
}

void (*sub_1002B5BC4(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = sub_1002B9E1C();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return sub_1002B5CC0;
}

void sub_1002B5CC0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10001342C(v2 + 144, v2 + 184);
    sub_10001342C(v2 + 184, v2 + 224);
    sub_100003ABC(&qword_10060A730);
    swift_dynamicCast();
    v3 = *(v2 + 7);
    *v2 = *(v2 + 6);
    *(v2 + 1) = v3;
    *(v2 + 2) = *(v2 + 8);
    sub_1002B9688(v2);
    *(v2 + 41) = *v2;
    sub_100007214(v2 + 328, &qword_10060A768);
    *(v2 + 40) = *(v2 + 1);
    sub_100007214(v2 + 320, &qword_10060A768);
    *(v2 + 39) = *(v2 + 2);
    sub_100007214(v2 + 312, &qword_10060A770);

    sub_100004C6C(v2 + 184);
  }

  else
  {
    sub_10001342C(v2 + 144, v2 + 184);
    sub_100003ABC(&qword_10060A730);
    swift_dynamicCast();
    v4 = *(v2 + 7);
    *(v2 + 3) = *(v2 + 6);
    *(v2 + 4) = v4;
    *(v2 + 5) = *(v2 + 8);
    sub_1002B9688(v2 + 48);
    *(v2 + 38) = *(v2 + 6);
    sub_100007214(v2 + 304, &qword_10060A768);
    *(v2 + 37) = *(v2 + 7);
    sub_100007214(v2 + 296, &qword_10060A768);
    *(v2 + 36) = *(v2 + 8);
    sub_100007214(v2 + 288, &qword_10060A770);
  }

  sub_100004C6C(v2 + 144);

  free(v2);
}

char *sub_1002B5EA4()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v9[2] = v0[2];
  v10 = v9[0];
  v2 = *(&v1 + 1);
  v11 = v1;
  v3 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View());
  sub_10000F778(&v10, v8, &qword_10060A768);
  sub_10000F778(&v10 + 8, v8, &qword_10060A768);
  sub_10000F778(&v11, v8, &qword_10060A770);
  v4 = v2;
  v5 = Artwork.Placeholder.View.init(configuration:)(v9);
  sub_1002B9F1C(&qword_10060A808, v6, type metadata accessor for Artwork.Placeholder.View);
  return v5;
}

id sub_1002B5F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL sub_1002B6004(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

double sub_1002B604C()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.12];

  v5 = sub_1004BBE24();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v2;
  unk_100618CD0 = v4;
  qword_100618CD8 = v6;
  unk_100618CE0 = v7;
  result = 0.46;
  xmmword_100618CE8 = xmmword_1004D9AF0;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (qword_100609A48 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A48 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_100618CD0;
  v4 = qword_100618CD8;
  v3 = unk_100618CE0;
  v10 = unk_100618CE0;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618CE8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_1002B626C()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemFillColor];
  v2 = [v0 secondaryLabelColor];
  v3 = sub_1004BBE24();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.miniPlayer = v1;
  unk_100618D00 = v2;
  qword_100618D08 = v4;
  unk_100618D10 = v5;
  result = 0.46;
  xmmword_100618D18 = xmmword_1004D9AF0;
  return result;
}

uint64_t *Artwork.Placeholder.miniPlayer.unsafeMutableAddressor()
{
  if (qword_100609A50 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.miniPlayer;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A50 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_100618D00;
  v4 = qword_100618D08;
  v3 = unk_100618D10;
  v10 = unk_100618D10;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618D18;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = qword_100609A40;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_10060A790;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  sub_100009130(0, &qword_10060DF30);
  v17 = sub_1004BCFA4();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = sub_1004BCFA4();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = sub_1004BCFA4();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

id sub_1002B66D8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.music = v3;
  unk_100618D30 = qword_10060A790;
  qword_100618D38 = v1;
  unk_100618D40 = v2;
  xmmword_100618D48 = xmmword_1004D9B00;

  return v4;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (qword_100609A58 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A58 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_100618D30;
  v4 = qword_100618D38;
  v3 = unk_100618D40;
  v10 = unk_100618D40;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618D48;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B68E8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.musicVideo = v3;
  unk_100618D60 = qword_10060A790;
  qword_100618D68 = v1;
  unk_100618D70 = v2;
  xmmword_100618D78 = xmmword_1004D9AE0;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (qword_100609A60 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A60 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_100618D60;
  v4 = qword_100618D68;
  v3 = unk_100618D70;
  v10 = unk_100618D70;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618D78;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B6B08()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.tv = v3;
  unk_100618D90 = qword_10060A790;
  qword_100618D98 = v1;
  unk_100618DA0 = v2;
  xmmword_100618DA8 = xmmword_1004D9AE0;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (qword_100609A68 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A68 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_100618D90;
  v4 = qword_100618D98;
  v3 = unk_100618DA0;
  v10 = unk_100618DA0;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618DA8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B6D10()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.microphone = v3;
  unk_100618DC0 = qword_10060A790;
  qword_100618DC8 = v1;
  unk_100618DD0 = v2;
  xmmword_100618DD8 = xmmword_1004D9AF0;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (qword_100609A70 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A70 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_100618DC0;
  v4 = qword_100618DC8;
  v3 = unk_100618DD0;
  v10 = unk_100618DD0;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618DD8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002B6F28()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.person = v3;
  unk_100618DF0 = qword_10060A790;
  qword_100618DF8 = v1;
  unk_100618E00 = v2;
  xmmword_100618E08 = xmmword_1004D9AE0;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (qword_100609A78 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A78 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_100618DF0;
  v4 = qword_100618DF8;
  v3 = unk_100618E00;
  v10 = unk_100618E00;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618E08;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_1002B7144()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_100618E20 = 0;
  qword_100618E28 = v1;
  unk_100618E30 = v2;
  result = 0.5;
  xmmword_100618E38 = xmmword_1004D9AE0;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (qword_100609A80 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A80 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_100618E20;
  v4 = qword_100618E28;
  v3 = unk_100618E30;
  v10 = unk_100618E30;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618E38;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = sub_1004BB914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, enum case for Playlist.Variant.regular(_:), v7);
    if (v11(v6, 1, v7) != 1)
    {
      sub_100007214(v6, &qword_10060A7B8);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = sub_1002B9850(v10, v15);
  (*(v8 + 8))(v10, v7, v12);
  v13 = v15[1];
  *a2 = v15[0];
  a2[1] = v13;
  result = *&v16;
  a2[2] = v16;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002B9850(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id sub_1002B7528()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_100609A40 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10060A790;
  static Artwork.Placeholder.radio = v3;
  unk_100618E50 = qword_10060A790;
  qword_100618E58 = v1;
  unk_100618E60 = v2;
  xmmword_100618E68 = xmmword_1004D9B00;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (qword_100609A88 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A88 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_100618E50;
  v4 = qword_100618E58;
  v3 = unk_100618E60;
  v10 = unk_100618E60;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100618E68;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v21 = *(v1 + 32);
  if (*v1)
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = v4;
    v12 = [v7 secondarySystemFillColor];
    sub_100009130(0, &qword_10060DF30);
    v13 = sub_1004BCFA4();

    if (v13)
    {
      if (qword_100609A90 != -1)
      {
        swift_once();
      }

      v14 = qword_10060A798;
LABEL_11:
      v3 = v14;

      goto LABEL_12;
    }

    v18 = [v7 tertiarySystemFillColor];
    v19 = sub_1004BCFA4();

    if (v19)
    {
      if (qword_100609A98 != -1)
      {
        swift_once();
      }

      v14 = qword_10060A7A0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v4;
  }

LABEL_12:
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  result = v21;
  a1[2] = v21;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

uint64_t sub_1002B7A78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100399BF8;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

id sub_1002B7B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  sub_100009130(0, &qword_10060DF30);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double sub_1002B7D20()
{
  sub_100003ABC(&qword_10060F580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C50A0;
  *(v1 + 32) = sub_1004BBE64();
  *(v1 + 40) = v2;
  isa = sub_1004BC284().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1004C50A0;
      *(v7 + 32) = sub_1004BBE64();
      *(v7 + 40) = v8;
      v9 = sub_1004BC284().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    [v0 type];

    return sub_1002B9BA8();
  }

  else
  {
    v2 = sub_1004BBE24();
    v3 = [objc_opt_self() _systemImageNamed:v2];

    return v3;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  v2 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3;
  v5 = sub_1004BB914();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if ([v12 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v13 type], v4);
        v14 = *(v6 + 48);
        if (v14(v4, 1, v5) == 1)
        {
          (*(v6 + 104))(v8, enum case for Playlist.Variant.regular(_:), v5);
          if (v14(v4, 1, v5) != 1)
          {
            sub_100007214(v4, &qword_10060A7B8);
          }
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
        }

        v16 = sub_1002B9850(v8, v27);
        (*(v6 + 8))(v8, v5, v16);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_100609A70 != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_100609A78 != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_100609A68 != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (qword_100609A58 != -1)
    {
      swift_once();
    }

    v15 = &static Artwork.Placeholder.music;
LABEL_32:
    v21 = *v15;
    v22 = v15[1];
    v20 = v15[2];
    v23 = v15[3];
    v17 = v15[4];
    v18 = v15[5];
    v24 = v20;
    v19 = v23;
    v25 = v21;
    v26 = v22;
    goto LABEL_33;
  }

  v10 = [v9 anyObject];
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = v10;
  MPModelObject.artworkPlaceholder.getter(v27);

LABEL_17:
  v17 = v27[4];
  v18 = v27[5];
  v20 = v27[2];
  v19 = v27[3];
  v21 = v27[0];
  v22 = v27[1];
LABEL_33:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v20;
  a1[3] = v19;
  a1[4] = v17;
  a1[5] = v18;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v132 = a2;
  v95 = sub_1004BB744();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004B7A34();
  v93 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1004B7C94();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1004B7CF4();
  v99 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1004B7C34();
  v102 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1004BB904();
  v106 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v9 - 8);
  v111 = &v91 - v10;
  v119 = sub_1004BB914();
  v118 = *(v119 - 8);
  v11 = __chkstk_darwin(v119);
  v105 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v91 - v13;
  v117 = sub_1004BBA84();
  v109 = *(v117 - 8);
  v14 = __chkstk_darwin(v117);
  v116 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v91 - v16;
  v122 = sub_1004BAD04();
  v115 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1004B7B14();
  v120 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1004BB6F4();
  v123 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004B7C44();
  v126 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BB204();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1004BB564();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v34;
  (*(v34 + 16))(v33, v129, a1);
  if (swift_dynamicCast())
  {
    (*(v28 + 8))(v31, v27);
    v35 = a1;
LABEL_5:
    (*(v131 + 8))(v33, v35);
    if (qword_100609A70 != -1)
    {
      swift_once();
    }

    v36 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v35 = a1;
  if (swift_dynamicCast())
  {
    (*(v24 + 8))(v26, v23);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v126 + 8))(v22, v20);
  }

  else
  {
    v38 = v127;
    v37 = v128;
    if (swift_dynamicCast())
    {
      v39 = v123;
    }

    else
    {
      v38 = v124;
      v37 = v125;
      if (!swift_dynamicCast())
      {
        v51 = v121;
        v50 = v122;
        if (swift_dynamicCast())
        {
          v52 = v33;
          if (qword_100609A60 != -1)
          {
            swift_once();
          }

          v40 = static Artwork.Placeholder.musicVideo;
          v41 = unk_100618D60;
          v43 = qword_100618D68;
          v53 = unk_100618D70;
          v129 = xmmword_100618D78;
          v54 = *(v115 + 8);
          v55 = static Artwork.Placeholder.musicVideo;
          v56 = v41;
          v57 = v43;
          v45 = v53;
          v54(v51, v50);
          result = (*(v131 + 8))(v52, v35);
          goto LABEL_19;
        }

        v58 = v114;
        v59 = v117;
        if (swift_dynamicCast())
        {
          v60 = v109;
          (*(v109 + 32))(v116, v58, v59);
          v61 = v111;
          sub_1004BB934();
          v62 = v118;
          v63 = *(v118 + 48);
          v64 = v119;
          if (v63(v61, 1, v119) == 1)
          {
            v65 = v110;
            (*(v62 + 104))(v110, enum case for Playlist.Variant.regular(_:), v64);
            if (v63(v61, 1, v64) != 1)
            {
              sub_100007214(v61, &qword_10060A7B8);
            }
          }

          else
          {
            v65 = v110;
            (*(v62 + 32))(v110, v61, v64);
          }

          v73 = sub_1002B9850(v65, v133);
          (*(v62 + 8))(v65, v64, v73);
          (*(v60 + 8))(v116, v59);
        }

        else
        {
          v66 = v112;
          v67 = v113;
          v68 = swift_dynamicCast();
          v69 = v119;
          v70 = v118;
          if (!v68)
          {
            v74 = v107;
            v75 = v108;
            if (swift_dynamicCast())
            {
              v76 = v133;
            }

            else
            {
              v74 = v103;
              v75 = v104;
              if (swift_dynamicCast())
              {
                v76 = &v130;
              }

              else
              {
                v74 = v100;
                v75 = v101;
                if (swift_dynamicCast())
                {
                  v76 = &v128;
                }

                else
                {
                  v74 = v97;
                  v75 = v98;
                  if (!swift_dynamicCast())
                  {
                    v77 = v94;
                    v78 = v95;
                    if (swift_dynamicCast())
                    {
                      v79 = v33;
                      if (qword_100609A88 != -1)
                      {
                        swift_once();
                      }

                      v40 = static Artwork.Placeholder.radio;
                      v41 = unk_100618E50;
                      v43 = qword_100618E58;
                      v80 = unk_100618E60;
                      v129 = xmmword_100618E68;
                      v81 = *(v92 + 8);
                      v82 = static Artwork.Placeholder.radio;
                      v83 = v41;
                      v84 = v43;
                      v45 = v80;
                      v81(v77, v78);
                      result = (*(v131 + 8))(v79, v35);
                    }

                    else
                    {
                      v85 = v33;
                      if (qword_100609A58 != -1)
                      {
                        swift_once();
                      }

                      v40 = static Artwork.Placeholder.music;
                      v41 = unk_100618D30;
                      v43 = qword_100618D38;
                      v86 = unk_100618D40;
                      v129 = xmmword_100618D48;
                      v87 = *(v131 + 8);
                      v88 = static Artwork.Placeholder.music;
                      v89 = v41;
                      v90 = v43;
                      v45 = v86;
                      result = v87(v85, v35);
                    }

                    goto LABEL_19;
                  }

                  v76 = &v125;
                }
              }
            }

            (*(*(v76 - 32) + 8))(v74, v75);
            (*(v131 + 8))(v33, v35);
            if (qword_100609A68 != -1)
            {
              swift_once();
            }

            v36 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v71 = v105;
          (*(v118 + 104))(v105, enum case for Playlist.Variant.folder(_:), v119);
          v72 = sub_1002B9850(v71, v133);
          (*(v70 + 8))(v71, v69, v72);
          (*(v106 + 8))(v66, v67);
        }

        result = (*(v131 + 8))(v33, v35);
        v48 = v134;
        v43 = v133[2];
        v45 = v133[3];
        v40 = v133[0];
        v41 = v133[1];
        goto LABEL_20;
      }

      v39 = v120;
    }

    (*(v39 + 8))(v38, v37);
  }

  (*(v131 + 8))(v33, v35);
  if (qword_100609A78 != -1)
  {
    swift_once();
  }

  v36 = &static Artwork.Placeholder.person;
LABEL_18:
  v40 = *v36;
  v41 = v36[1];
  v43 = v36[2];
  v42 = v36[3];
  v129 = *(v36 + 2);
  v44 = v43;
  v45 = v42;
  v46 = v40;
  result = v41;
LABEL_19:
  v48 = v129;
LABEL_20:
  v49 = v132;
  *v132 = v40;
  v49[1] = v41;
  v49[2] = v43;
  v49[3] = v45;
  *(v49 + 2) = v48;
  return result;
}

BOOL _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009130(0, &qword_10060DF30);
    v6 = v5;
    v7 = v4;
    v8 = sub_1004BCFA4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100009130(0, &qword_10060DF30);
    v11 = v10;
    v12 = v9;
    v13 = sub_1004BCFA4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100009130(0, &qword_10060F560);
    v16 = v15;
    v17 = v14;
    v18 = sub_1004BCFA4();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  sub_100009130(0, &unk_1006111F0);
  if ((sub_1004BCFA4() & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

void sub_1002B9688(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = *(a1 + 8);
  v18 = v8;
  v9 = *(a1 + 24);
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = *(a1 + 16);
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 32);
  sub_10000F778(&v18, v19, &qword_10060A768);
  sub_10000F778(&v17, v19, &qword_10060A768);
  sub_10000F778(&v16, v19, &qword_10060A770);
  v13 = v9;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    sub_1002B4D34(v19);
  }

  sub_100007214(&v25, &qword_10060A768);
  v24 = *(&v20 + 1);
  sub_100007214(&v24, &qword_10060A768);
  v14 = *(&v21 + 1);
  v23 = v21;
  sub_100007214(&v23, &qword_10060A770);
}

uint64_t sub_1002B9838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1002B9850@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4);
  sub_1002B9F1C(&qword_10060A878, 255, &type metadata accessor for Playlist.Variant);
  sub_1004BC244();
  sub_1004BC244();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (qword_100609A40 != -1)
    {
      swift_once();
    }

    v13 = qword_10060A790;
    v14 = qword_10060A790;
  }

  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v8, v4);
  }

  v16 = sub_1004BBE24();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_1004D9B00;
  return result;
}

id sub_1002B9BA8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

unint64_t sub_1002B9C80()
{
  result = qword_10060A7C0;
  if (!qword_10060A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A7C0);
  }

  return result;
}

uint64_t sub_1002B9CD4(uint64_t a1, uint64_t a2)
{
  result = sub_1002B9F1C(&qword_10060A808, a2, type metadata accessor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002B9D98(uint64_t a1)
{
  *(a1 + 8) = sub_1002B9DC8();
  result = sub_1002B9E1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002B9DC8()
{
  result = qword_10060A840;
  if (!qword_10060A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A840);
  }

  return result;
}

unint64_t sub_1002B9E1C()
{
  result = qword_10060A848;
  if (!qword_10060A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A848);
  }

  return result;
}

uint64_t sub_1002B9E70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002B9EB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002B9F1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  sub_1002BA0E0(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  sub_1002BA0E0(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t sub_1002BA1AC(uint64_t a1, uint64_t a2)
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
  return _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1002BA218()
{
  _s16PackageDataCacheCMa();
  swift_allocObject();
  result = sub_1002BA8B0();
  qword_10060A880 = result;
  return result;
}

uint64_t sub_1002BA258(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004BA8F4();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BA924();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_1002BB5E8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005BF2C8;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_10003E428(a1, a2);
  sub_1004BA914();
  v24 = _swiftEmptyArrayStorage;
  sub_1002BB66C(&qword_10060A738, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_10060A740);
  sub_1000F96D4(&qword_10060A748, &qword_10060A740);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1002BA54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();

  sub_10003E428(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002BB1D4(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_1002BA608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14 = xmmword_1004D9B10;
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002BB650;
  *(v8 + 24) = v7;
  v13[4] = sub_1000E6038;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100008224;
  v13[3] = &unk_1005BF340;
  v9 = _Block_copy(v13);
  v10 = v6;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;
    sub_10003F3CC(v14, *(&v14 + 1));
    sub_100004D7C(v12, *(&v12 + 1));

    return v12;
  }

  return result;
}

uint64_t sub_1002BA7B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_1003740CC(a3, a4);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      sub_10003E428(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v12;
  a1[1] = v13;
  return sub_100004D7C(v14, v15);
}

uint64_t sub_1002BA870()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002BA8B0()
{
  v12 = sub_1004BCB34();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BCAF4();
  __chkstk_darwin(v4);
  v5 = sub_1004BA924();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = sub_1002CF908(_swiftEmptyArrayStorage);
  v6 = sub_100009130(0, &qword_10060E4F0);
  v10[1] = "AF216PackageDataCache";
  v10[2] = v6;
  sub_1004BA914();
  v13 = _swiftEmptyArrayStorage;
  sub_1002BB66C(&qword_10060A970, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_10060A978);
  sub_1000F96D4(&qword_10060A980, &qword_10060A978);
  sub_1004BD2D4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v7 = sub_1004BCB74();
  v8 = v11;
  *(v11 + 24) = v7;
  return v8;
}

id CAPackage.init(definition:)(uint64_t a1)
{
  v41 = sub_1004B6B04();
  v3 = *(v41 - 8);
  v4 = __chkstk_darwin(v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  if (qword_100609AA0 != -1)
  {
    swift_once();
  }

  v42 = v1;
  v9 = qword_10060A880;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = sub_1002BA608(*a1, v10);
  if (v13 >> 60 == 15)
  {
    v39 = v3;
    v14 = *(a1 + 16);
    v40 = a1;
    v15 = v14;
    v16 = sub_1004BBE24();
    v17 = sub_1004BBE24();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (!v18)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
      swift_willThrow();
      sub_1002BB46C(v40);

      return v9;
    }

    sub_1004B6A94();

    v19 = v39;
    v20 = v41;
    (*(v39 + 32))(v8, v6, v41);
    v21 = v42;
    v22 = sub_1004B6B24();
    if (v21)
    {
      (*(v19 + 8))(v8, v20);

      v24 = v40;
LABEL_12:
      sub_1002BB46C(v24);
      return v9;
    }

    v31 = v22;
    v42 = 0;
    v32 = v23;
    sub_1002BA258(v22, v23, v11, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = v32;
    isa = sub_1004B6B64().super.isa;
    v43 = 0;
    v9 = [ObjCClassFromMetadata packageWithData:isa type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      sub_1004B69B4();

      swift_willThrow();
      sub_100004D90(v31, v34);
      sub_1002BB46C(v40);
      (*(v39 + 8))(v8, v20);
      return v9;
    }

    v36 = *(v39 + 8);
    v37 = v43;
    v36(v8, v20);

    sub_100004D90(v31, v34);
    a1 = v40;
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v27 = swift_getObjCClassFromMetadata();
    v28 = sub_1004B6B64().super.isa;
    v43 = 0;
    v9 = [v27 packageWithData:v28 type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      sub_1004B69B4();

      swift_willThrow();
      sub_100004D7C(v25, v26);
      v24 = a1;
      goto LABEL_12;
    }

    v29 = v43;
    sub_100004D7C(v25, v26);
  }

  sub_1002BB46C(a1);
  return v9;
}

id sub_1002BB03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_100609A20 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = qword_100618C60;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0x3FF0000000000000;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;

  return v5;
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v6 = qword_100618C60;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &off_1005BE2E8;
  *(a1 + 96) = 1;

  return v6;
}

uint64_t sub_1002BB1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1003740CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1003744D4(v18, a5 & 1);
      v13 = sub_1003740CC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1004BDAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100374E44();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_100004D90(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {
    sub_100009130(0, &unk_1006111F0);
    if (sub_1004BCFA4() & 1) != 0 && (sub_1004BCA84() & 1) != 0 && (sub_1003296E8(*(a1 + 72), *(a2 + 72)))
    {
      if (*(a1 + 96))
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_1002BB49C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002BB4C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1002BB510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BB5A0()
{

  sub_100004D90(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1002BB5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BB610()
{

  return swift_deallocObject();
}

uint64_t sub_1002BB66C(unint64_t *a1, void (*a2)(uint64_t))
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

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  sub_1002BA0E0(a1, v11);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoreAnimationPackageView();
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002BBF80();
  CoreAnimationPackageView.reset()();
  sub_100009130(0, &unk_1006110B0);
  sub_1004BCB94();
  sub_1004BCF24();
  swift_unknownObjectRelease();

  sub_1002BB46C(a1);

  return v8;
}

double sub_1002BB8CC(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v18[48] = *(v4 + 4);
  v19 = v5;
  v20 = v4[96];
  v6 = *(v4 + 1);
  v17 = *v4;
  *v18 = v6;
  v7 = *(v4 + 3);
  *&v18[16] = *(v4 + 2);
  *&v18[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v17 == *a1 || (sub_1004BD9C4() & 1) != 0)
  {
    sub_100009130(0, &unk_1006111F0);
    sub_1002BA0E0(&v17, v16);
    if (sub_1004BCFA4() & 1) != 0 && (v16[0] = *&v18[8], v16[1] = *&v18[24], v16[2] = *&v18[40], v10 = *(a1 + 5), v16[11] = *(a1 + 3), v16[12] = v10, v16[13] = *(a1 + 7), (sub_1004BCA84()))
    {
      v11 = sub_1003296E8(*&v18[56], a1[9]);
      sub_1002BB46C(&v17);
      if (v11)
      {
        if (v20)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v19 == *(a1 + 10))
        {
          result = *(&v19 + 1);
          if (*(&v19 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      sub_1002BB46C(&v17);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (sub_1004BD9C4() & 1) == 0)
  {
    sub_1002BBF80();
  }

  v14 = *(v4 + 40);
  v16[14] = *(v4 + 24);
  v16[15] = v14;
  v16[16] = *(v4 + 56);
  v15 = *(a1 + 5);
  v16[8] = *(a1 + 3);
  v16[9] = v15;
  v16[10] = *(a1 + 7);
  if ((sub_1004BCA84() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_1002BA0E0(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1002BA0E0(v12, v11);
  sub_1002BA0E0(a1, v11);
  sub_1002BB46C(v18);
  sub_1002BB8CC(v12);
  sub_1002BB46C(v12);
  return sub_1002BB46C(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_1002BA0E0(v4, v4 + 416);
  return sub_1002BBD44;
}

void sub_1002BBD44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_1002BA0E0(v2 + 624, v2 + 728);
    sub_1002BA0E0(v2 + 624, v2 + 728);
    sub_1002BA0E0(v2 + 104, v2 + 728);
    sub_1002BB46C(v4);
    sub_1002BB8CC((v2 + 104));
    sub_1002BB46C(v2 + 104);
    sub_1002BB46C(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_1002BA0E0(v2 + 208, v2 + 624);
    sub_1002BA0E0(v4, v2 + 624);
    sub_1002BB46C(v2 + 416);
    sub_1002BB8CC((v2 + 208));
    sub_1002BB46C(v2 + 208);
    v28 = v4;
  }

  sub_1002BB46C(v28);

  free(v2);
}

void sub_1002BBF80()
{
  v1 = v0;
  sub_100009130(0, &qword_10060AA00);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v51[4] = *(v2 + 4);
  v51[5] = v3;
  v52 = v2[96];
  v4 = *(v2 + 1);
  v51[0] = *v2;
  v51[1] = v4;
  v5 = *(v2 + 3);
  v51[2] = *(v2 + 2);
  v51[3] = v5;
  sub_1002BA0E0(v51, v45);
  v6 = CAPackage.init(definition:)(v51);
  v26 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v6;
  v27 = v6;

  v28 = [v27 rootLayer];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v28;
    v30 = v28;
    [v29 removeFromSuperlayer];

    v31 = [objc_allocWithZone(CAStateController) initWithLayer:v30];
    v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v31;

    [v30 removeFromSuperlayer];
    [v30 setGeometryFlipped:{objc_msgSend(v27, "isGeometryFlipped")}];
    v33 = [v1 layer];
    [v33 addSublayer:v30];

    v34 = [v1 layer];
    [v34 bounds];

    sub_1004BCDD4();
    [v30 setPosition:?];
    sub_1002BD418();
  }

  else
  {
    sub_1002BE0B0();
    v35 = swift_allocError();
    swift_willThrow();

    if (qword_100609AB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1004B80B4();
    sub_100007084(v7, qword_100618E80);
    v8 = v1;
    swift_errorRetain();
    v9 = sub_1004B8094();
    v10 = sub_1004BC994();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v13 = *(v2 + 3);
      v14 = *(v2 + 5);
      v48 = *(v2 + 4);
      v49 = v14;
      v15 = *(v2 + 1);
      v45[0] = *v2;
      v45[1] = v15;
      v16 = *(v2 + 3);
      v18 = *v2;
      v17 = *(v2 + 1);
      v46 = *(v2 + 2);
      v47 = v16;
      v19 = *(v2 + 5);
      v41 = v48;
      v42 = v19;
      v37 = v18;
      v38 = v17;
      v44[0] = v12;
      v50 = v2[96];
      v43 = v2[96];
      v39 = v46;
      v40 = v13;
      sub_1002BA0E0(v45, v36);
      v20 = sub_1004BBF04();
      v22 = sub_1002C4260(v20, v21, v44);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2082;
      *&v37 = v35;
      swift_errorRetain();
      sub_100003ABC(&qword_10060F8C0);
      v23 = sub_1004BBF04();
      v25 = sub_1002C4260(v23, v24, v44);

      *(v11 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002BC3E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (sub_1004BD9C4() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = sub_1004BBE24();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1002BC3E8(v6, v7);
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1002BC700;
}

void sub_1002BC700(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_1002BC3E8(v9, v8);
  }

  else
  {
    sub_1002BC3E8(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_100009130(0, &qword_10060DF30);
      a1 = a1;
      v5 = v4;
      v6 = sub_1004BCFA4();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_1002BD418();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1002BC958;
}

void sub_1002BC958(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_100009130(0, &qword_10060DF30);
        v5 = v3;
        v9 = v8;
        v10 = sub_1004BCFA4();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_1002BD418();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  sub_1002BC3E8(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_1002BD8B8(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_100009130(0, &qword_10060A9C8);
  v8 = sub_1004BC2A4();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = sub_1004BD6A4();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1004BD484();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = sub_1004BBE64();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = sub_1004BD9C4();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = sub_1004BBE24();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    sub_1002BDF30(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    sub_1002BC3E8(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_1002BE028;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000C81CC;
    v12[3] = &unk_1005BF390;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void sub_1002BD0D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CoreAnimationPackageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v2[96])
    {
      v3 = v1;
      v4 = [v0 layer];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = *(v2 + 10);
      v8 = *(v2 + 11);
      v9 = v1;
    }

    [v1 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (v14 / CGRectGetHeight(v23) >= v6 / v8)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = v8 / CGRectGetHeight(v25);
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = v6 / CGRectGetWidth(v24);
    }

    CGAffineTransformMakeScale(&v18, v15, v15);
    v16 = *(v2 + 40);
    *&t2.a = *(v2 + 24);
    *&t2.c = v16;
    *&t2.tx = *(v2 + 56);
    CGAffineTransformConcat(&v19, &v18, &t2);
    t2 = v19;
    CATransform3DMakeAffineTransform(&v18, &t2);
    [v1 setTransform:&v18];
    v17 = [v0 layer];
    [v17 bounds];

    sub_1004BCDD4();
    [v1 setPosition:?];
  }
}

void sub_1002BD418()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = sub_1004BC2A4();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_100004DE4(v10, v31);
          sub_100004DE4(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_1004BBE24();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_1004BD284();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009130(0, &qword_10060A9C8);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_1002BE048(v30);
            }
          }

          ++v9;
          sub_100004C6C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002BD8B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100003ABC(&qword_10060F580);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002BD990(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003ABC(&qword_10060A9F8);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlaylistCurators.Curator(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1002BDB34(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = sub_1004BC2A4();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_100004DE4(v10, v31);
          sub_100004DE4(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_1004BBE24();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_1004BD284();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009130(0, &qword_10060A9C8);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_1002BE048(v30);
            }
          }

          ++v9;
          sub_100004C6C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void sub_1002BDE74()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_1002BDF30(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = (*v2)[2];
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > (v4[3] >> 1))
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1003BEC84(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1001330CC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1002BDFF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002BE030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BE048(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100611260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002BE0B0()
{
  result = qword_10060AA08;
  if (!qword_10060AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AA08);
  }

  return result;
}

unint64_t sub_1002BE11C()
{
  result = qword_10060AA10;
  if (!qword_10060AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AA10);
  }

  return result;
}

id sub_1002BE170()
{
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v1 = qword_100618C60;
  static NSBundle.musicCoreUIBundle = qword_100618C60;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (qword_100609AA8 != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (qword_100609AA8 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  v6 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v9[13]) = vdupq_n_s64(0x4040000000000000uLL);
  sub_1004BCED4();
  v10 = sub_1004BCEE4();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_1002BE588(v8, a1 + v9[9]);
  v11 = a1 + v9[10];
  if (*v11)
  {
    v12 = *&UIEdgeInsetsZero.bottom;
    *(v11 + 8) = *&UIEdgeInsetsZero.top;
    *(v11 + 24) = v12;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_1004D9B20;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_1004D9B80;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v18 = xmmword_1004D9B40;
      }

      else
      {

        v18 = xmmword_1004D9B30;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    sub_1002BE5F8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
    *(v11 + 48) = 0;
    result = 0.0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v18 = xmmword_1004D9B50;
LABEL_19:
    *a1 = v18;
    goto LABEL_20;
  }

  v13 = *v11;
  if (*v11 && (type metadata accessor for CircularProgressView(), (v14 = swift_dynamicCastClass()) != 0))
  {
    v15 = v14;
    v16 = v13;
  }

  else
  {
    v20 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v15 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  sub_1002BE638(*(a1 + 200), *(a1 + 208));
  *(a1 + 200) = xmmword_1004C5080;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_1004D9B60;
  *(a1 + 56) = 1;
  v21 = UIFontTextStyleFootnote;

  *(a1 + 24) = v21;
  sub_1002BE5F8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
  *v11 = v15;
  v22 = *&UIEdgeInsetsZero.top;
  *(v11 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v11 + 8) = v22;
  result = 1.0;
  *(v11 + 40) = xmmword_1004D9B70;
  return result;
}

uint64_t sub_1002BE588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100610D00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002BE5F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

uint64_t sub_1002BE638(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002BE67C()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100618E80);
  sub_100007084(v0, qword_100618E80);
  sub_1002BE6F8();
  OS_os_log.init(musicCategory:)();
  return sub_1004B80C4();
}

unint64_t sub_1002BE6F8()
{
  result = qword_10060AA18;
  if (!qword_10060AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060AA18);
  }

  return result;
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1004BB5B4();
  v2 = sub_1004BB634();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002BE7B4@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1004BB6C4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007214(v8, &unk_10060EBE0);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    (*(v10 + 16))(a3, v13, v9);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v17 = *(v16 + 20);
    a2();
    (*(v10 + 8))(v13, v9);
    v18 = sub_1004BB634();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t sub_1002BEA58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1004BB6C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BB564();
  sub_1002BF204();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007214(v4, &unk_10060EBE0);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    (*(v6 + 16))(a1, v8, v5);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    sub_1004BB5B4();
    (*(v6 + 8))(v8, v5);
    v13 = sub_1004BB634();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}