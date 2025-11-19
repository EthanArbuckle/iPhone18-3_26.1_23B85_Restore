uint64_t sub_10024235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v23 = *(a2 + 24);
  v24 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 16);
  v22 = *(a3 + 24);
  v19 = *(a3 + 40);
  v18 = *(a3 + 32);
  v20 = *(a3 + 48);
  v28 = *a1;
  *a4 = *a1;
  *(a4 + 8) = v4;
  v26 = v5;
  v27 = v4;
  *(a4 + 16) = v6;
  *(a4 + 24) = v5;
  v25 = v6;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  *(a4 + 56) = v11;
  *(a4 + 64) = v10;
  *(a4 + 72) = v12;
  *(a4 + 80) = v23;
  *(a4 + 88) = v13;
  *(a4 + 96) = v24;
  *(a4 + 104) = v14;
  *(a4 + 112) = v15;
  *(a4 + 120) = v16;
  *(a4 + 128) = v17;
  *(a4 + 136) = v22;
  *(a4 + 144) = v18;
  *(a4 + 152) = v19;
  *(a4 + 160) = v20;
  sub_10024EA48(v28, v4, v6, v5);

  sub_10024EA48(v11, v10, v12, v23);

  sub_10024EA48(v15, v16, v17, v22);

  sub_10024EA48(v28, v27, v25, v26);

  sub_10024EA48(v11, v10, v12, v23);

  sub_10024EA48(v15, v16, v17, v22);

  sub_10024EA04(v15, v16, v17, v22);

  sub_10024EA04(v11, v10, v12, v23);

  sub_10024EA04(v28, v27, v25, v26);
}

uint64_t sub_100242598@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  return sub_10024DF48(v5 + v3, a1, type metadata accessor for ContextualPreview.Artwork);
}

uint64_t sub_100242674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  return sub_10024DF48(v3 + v4, a2, type metadata accessor for ContextualPreview.Artwork);
}

uint64_t sub_100242750(uint64_t a1)
{
  v2 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10024DF48(a1, v4, type metadata accessor for ContextualPreview.Artwork);
  return sub_1002427F0(v4);
}

uint64_t sub_1002427F0(uint64_t a1)
{
  v3 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(v1 + v6, v5, type metadata accessor for ContextualPreview.Artwork);
  v7 = sub_10024D4C4(v5, a1);
  sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
  if (v7)
  {
    sub_10024DF48(a1, v5, type metadata accessor for ContextualPreview.Artwork);
    swift_beginAccess();
    sub_10024E15C(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_10024DE78(a1, type metadata accessor for ContextualPreview.Artwork);
}

uint64_t sub_100242A00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024E1C0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100242AF8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_100242BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_100242C90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_100242E0C()
{
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle);
}

uint64_t sub_100242EB4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100242FCC()
{
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron);
}

uint64_t sub_100243088@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100243164(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10024328C()
{
  sub_10024DE78(v0 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);

  v1 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100243388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ContextualPreview.Artwork(0) + 28)) == 1)
  {
    v3 = ArtworkImage.Placeholder.View.Style.accentuated.unsafeMutableAddressor();
    sub_10024DF48(v3, a2, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

void sub_100243448()
{
  v0 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v0 - 8);

  v1 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v2 = [v1 view];

  if (v2)
  {
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

id sub_1002435B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualPreview.ViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002435F0()
{
  v54 = type metadata accessor for UploadedVideo();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UploadedAudio();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TVShow();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TVSeason();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TVEpisode();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Station();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Song();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SocialProfile();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for RecordLabel();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RadioShow();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Playlist.Folder();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Playlist();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicVideo();
  v86 = *(v12 - 8);
  v87 = v12;
  __chkstk_darwin(v12);
  v85 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v89 = *(v14 - 8);
  v90 = v14;
  __chkstk_darwin(v14);
  v88 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Genre();
  v92 = *(v16 - 8);
  v93 = v16;
  __chkstk_darwin(v16);
  v91 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EditorialItem();
  v95 = *(v18 - 8);
  v96 = v18;
  __chkstk_darwin(v18);
  v94 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CreditArtist();
  v100 = *(v20 - 8);
  v101 = v20;
  __chkstk_darwin(v20);
  v99 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v97 = *(v22 - 8);
  v98 = v22;
  __chkstk_darwin(v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Artist();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Album();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenericMusicItem();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = &v48 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v102, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v30 + 32))(v32, v37, v29);
    v39 = sub_10023CC30();
    (*(v30 + 8))(v32, v29);
    return v39;
  }

  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v26 + 32))(v28, v37, v25);
    v39 = sub_100244A50();
    (*(v26 + 8))(v28, v25);
    return v39;
  }

  if (v38 != enum case for GenericMusicItem.composer(_:))
  {
    if (v38 == enum case for GenericMusicItem.creditArtist(_:))
    {
      (*(v34 + 96))(v37, v33);
      v40 = v99;
      v41 = v100;
      v42 = v101;
      (*(v100 + 32))(v99, v37, v101);
      v43 = sub_100245738();
LABEL_8:
      v39 = v43;
      (*(v41 + 8))(v40, v42);
      return v39;
    }

    if (v38 == enum case for GenericMusicItem.curator(_:))
    {
      (*(v34 + 96))(v37, v33);
      v45 = v97;
      v44 = v98;
      (*(v97 + 32))(v24, v37, v98);
      v39 = sub_100244FB0();
      (*(v45 + 8))(v24, v44);
      return v39;
    }

    if (v38 == enum case for GenericMusicItem.editorialItem(_:))
    {
      (*(v34 + 96))(v37, v33);
      v40 = v94;
      v41 = v95;
      v42 = v96;
      (*(v95 + 32))(v94, v37, v96);
      v43 = sub_100245C98();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.genre(_:))
    {
      (*(v34 + 96))(v37, v33);
      v40 = v91;
      v41 = v92;
      v42 = v93;
      (*(v92 + 32))(v91, v37, v93);
      v43 = sub_100246228();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v34 + 96))(v37, v33);
      v40 = v88;
      v41 = v89;
      v42 = v90;
      (*(v89 + 32))(v88, v37, v90);
      v43 = sub_100246AB0();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v34 + 96))(v37, v33);
      v40 = v85;
      v41 = v86;
      v42 = v87;
      (*(v86 + 32))(v85, v37, v87);
      v43 = sub_10023D0E4();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v83;
      v40 = v82;
      v42 = v84;
      (*(v83 + 32))(v82, v37, v84);
      v43 = sub_100247018();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v80;
      v40 = v79;
      v42 = v81;
      (*(v80 + 32))(v79, v37, v81);
      v43 = sub_1002474C4();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v77;
      v40 = v76;
      v42 = v78;
      (*(v77 + 32))(v76, v37, v78);
      v43 = sub_100247B68();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v74;
      v40 = v73;
      v42 = v75;
      (*(v74 + 32))(v73, v37, v75);
      v43 = sub_1002481C0();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.socialProfile(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v71;
      v40 = v70;
      v42 = v72;
      (*(v71 + 32))(v70, v37, v72);
      v43 = sub_100248748();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.song(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v68;
      v40 = v67;
      v42 = v69;
      (*(v68 + 32))(v67, v37, v69);
      v43 = sub_100248BF8();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.station(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v65;
      v40 = v64;
      v42 = v66;
      (*(v65 + 32))(v64, v37, v66);
      v43 = sub_1002493F8();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v62;
      v40 = v61;
      v42 = v63;
      (*(v62 + 32))(v61, v37, v63);
      v43 = sub_100249998();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v59;
      v40 = v58;
      v42 = v60;
      (*(v59 + 32))(v58, v37, v60);
      v43 = sub_100249E48();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v56;
      v40 = v55;
      v42 = v57;
      (*(v56 + 32))(v55, v37, v57);
      v43 = sub_10024A3CC();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v50;
      v40 = v49;
      v42 = v51;
      (*(v50 + 32))(v49, v37, v51);
      v43 = sub_10024A9DC();
      goto LABEL_8;
    }

    if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v34 + 96))(v37, v33);
      v41 = v53;
      v40 = v52;
      v42 = v54;
      (*(v53 + 32))(v52, v37, v54);
      v43 = sub_10024AE94();
      goto LABEL_8;
    }
  }

  (*(v34 + 8))(v37, v33);
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v103 = 0xD00000000000001DLL;
  v104 = 0x8000000100E420F0;
  sub_10024E004(&qword_101186698, &type metadata accessor for GenericMusicItem);
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100244A50()
{
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artist();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for Artist, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 7, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FF0000000000000;
  v8 = &v3[v1[11]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 2;
  v9 = sub_10034E548();
  v11 = v10;
  type metadata accessor for ContextualPreview.Data(0);
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v24 = v16;
  v25 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v9, v11);
  if (v14[1])
  {
    KeyPath = swift_getKeyPath();
    v23[1] = v23;
    __chkstk_darwin(KeyPath);
    v23[-3] = 0;
    v23[-2] = 0;
    v23[-4] = v12;
    v26 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v15[1])
    {
LABEL_3:
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      v23[-3] = 0;
      v23[-2] = 0;
      v23[-4] = v12;
      v26 = v12;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_6;
    }
  }

  else
  {
    *v14 = 0;
    v14[1] = 0;
    if (v15[1])
    {
      goto LABEL_3;
    }
  }

  *v15 = 0;
  v15[1] = 0;
LABEL_6:
  if (*(v12 + v24))
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v23[-2] = v12;
    LOBYTE(v23[-1]) = 0;
    v26 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v12 + v24) = 0;
  }

  v20 = v25;
  if (*(v12 + v25) == 1)
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v12 + v20) = 1;
  }

  else
  {
    v21 = swift_getKeyPath();
    __chkstk_darwin(v21);
    v23[-2] = v12;
    LOBYTE(v23[-1]) = 1;
    v26 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  return v12;
}

uint64_t sub_100244FB0()
{
  v0 = sub_10010FC20(&qword_1011866A0);
  __chkstk_darwin(v0 - 8);
  v49 = &v47 - v1;
  v2 = type metadata accessor for Curator.Kind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v15);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Curator();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v17, &protocol witness table for Curator, v14);
  v18 = sub_10010FC20(&unk_101182950);
  (*(*(v18 - 8) + 56))(v11, 8, 11, v18);
  Curator.kind.getter();
  (*(v3 + 104))(v5, enum case for Curator.Kind.external(_:), v2);
  v19 = static Curator.Kind.== infix(_:_:)();
  v20 = *(v3 + 8);
  v20(v5, v2);
  v20(v8, v2);
  if (v19)
  {
    v21 = 0;
    v22 = 0;
    v23 = 2;
  }

  else
  {
    v24 = Corner.large.unsafeMutableAddressor();
    v21 = *v24;
    v22 = v24[1];
    v23 = *(v24 + 16);
  }

  v25 = v50;
  sub_10003D17C(v14, v50, &unk_10118A5E0);
  v26 = (v25 + v15[5]);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 0;
  sub_10024E06C(v11, v25 + v15[6], type metadata accessor for ArtworkImage.Placeholder);
  *(v25 + v15[7]) = 0;
  *(v25 + v15[8]) = 0x3FF0000000000000;
  v27 = v25 + v15[9];
  *v27 = v21;
  *(v27 + 8) = v22;
  *(v27 + 16) = v23;
  v28 = Curator.name.getter();
  v48 = v29;
  v30 = v49;
  Curator.editorialNotes.getter();
  v31 = type metadata accessor for EditorialNotes();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1000095E8(v49, &qword_1011866A0);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = v49;
    v33 = EditorialNotes.short.getter();
    v34 = v36;
    (*(v32 + 8))(v35, v31);
  }

  type metadata accessor for ContextualPreview.Data(0);
  v37 = swift_allocObject();
  v38 = (v37 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v37 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v37 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v40 = 0;
  v40[1] = 0;
  v41 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v37 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v42 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v37 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v50, v37 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v28, v48);
  sub_100242ABC(v33, v34);
  if (v40[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v47 - 3) = 0;
    *(&v47 - 2) = 0;
    *(&v47 - 4) = v37;
    v51 = v37;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v37 + v41))
    {
      goto LABEL_9;
    }

LABEL_12:
    v44 = swift_getKeyPath();
    __chkstk_darwin(v44);
    *(&v47 - 2) = v37;
    *(&v47 - 8) = 1;
    v51 = v37;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((*(v37 + v42) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v45 = swift_getKeyPath();
    __chkstk_darwin(v45);
    *(&v47 - 2) = v37;
    *(&v47 - 8) = 0;
    v51 = v37;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v50, type metadata accessor for ContextualPreview.Artwork);
    return v37;
  }

  *v40 = 0;
  v40[1] = 0;
  if ((*(v37 + v41) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  *(v37 + v41) = 1;
  if (*(v37 + v42))
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_10024DE78(v50, type metadata accessor for ContextualPreview.Artwork);
  *(v37 + v42) = 0;
  return v37;
}

uint64_t sub_100245738()
{
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CreditArtist();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for CreditArtist, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 7, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FF0000000000000;
  v8 = &v3[v1[11]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 2;
  v9 = CreditArtist.name.getter();
  v11 = v10;
  type metadata accessor for ContextualPreview.Data(0);
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v24 = v16;
  v25 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v9, v11);
  if (v14[1])
  {
    KeyPath = swift_getKeyPath();
    v23[1] = v23;
    __chkstk_darwin(KeyPath);
    v23[-3] = 0;
    v23[-2] = 0;
    v23[-4] = v12;
    v26 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v15[1])
    {
LABEL_3:
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      v23[-3] = 0;
      v23[-2] = 0;
      v23[-4] = v12;
      v26 = v12;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_6;
    }
  }

  else
  {
    *v14 = 0;
    v14[1] = 0;
    if (v15[1])
    {
      goto LABEL_3;
    }
  }

  *v15 = 0;
  v15[1] = 0;
LABEL_6:
  if (*(v12 + v24))
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v23[-2] = v12;
    LOBYTE(v23[-1]) = 0;
    v26 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v12 + v24) = 0;
  }

  v20 = v25;
  if (*(v12 + v25) == 1)
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v12 + v20) = 1;
  }

  else
  {
    v21 = swift_getKeyPath();
    __chkstk_darwin(v21);
    v23[-2] = v12;
    LOBYTE(v23[-1]) = 1;
    v26 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  return v12;
}

uint64_t sub_100245C98()
{
  v0 = sub_10010FC20(&qword_1011866A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  v3 = type metadata accessor for ContextualPreview.Artwork(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditorialItem();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v7, &protocol witness table for EditorialItem, v6);
  v8 = v4[8];
  v9 = sub_10010FC20(&unk_101182950);
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 11, v9);
  v10 = &v6[v4[7]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  v6[v4[9]] = 0;
  *&v6[v4[10]] = 0x3FF0000000000000;
  v11 = &v6[v4[11]];
  *v11 = xmmword_100EC1B40;
  v11[16] = 1;
  v12 = EditorialItem.name.getter();
  v30 = v13;
  EditorialItem.editorialNotes.getter();
  v14 = type metadata accessor for EditorialNotes();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v2, 1, v14) == 1)
  {
    sub_1000095E8(v2, &qword_1011866A0);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = EditorialNotes.short.getter();
    v17 = v18;
    (*(v15 + 8))(v2, v14);
  }

  type metadata accessor for ContextualPreview.Data(0);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v24 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v6, v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v12, v30);
  sub_100242ABC(v16, v17);
  if (v22[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v29 - 3) = 0;
    *(&v29 - 2) = 0;
    *(&v29 - 4) = v19;
    v31 = v19;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v19 + v23))
    {
      goto LABEL_6;
    }

LABEL_9:
    v26 = swift_getKeyPath();
    __chkstk_darwin(v26);
    *(&v29 - 2) = v19;
    *(&v29 - 8) = 1;
    v31 = v19;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((*(v19 + v24) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v29 - 2) = v19;
    *(&v29 - 8) = 0;
    v31 = v19;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v6, type metadata accessor for ContextualPreview.Artwork);
    return v19;
  }

  *v22 = 0;
  v22[1] = 0;
  if ((*(v19 + v23) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v19 + v23) = 1;
  if (*(v19 + v24))
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_10024DE78(v6, type metadata accessor for ContextualPreview.Artwork);
  *(v19 + v24) = 0;
  return v19;
}

uint64_t sub_100246228()
{
  v0 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v0 - 8);
  v2 = &v43 - v1;
  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Genre.logoArtwork.getter();
  sub_1000089F8(v14, v11, &unk_101188920);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1000095E8(v14, &unk_101188920);
    v21 = 1;
  }

  else
  {
    (*(v4 + 32))(v8, v11, v3);
    v22 = v44;
    (*(v4 + 16))(v44, v8, v3);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v4 + 8))(v8, v3);
    sub_1000095E8(v14, &unk_101188920);
    v23 = type metadata accessor for Artwork.CropStyle();
    (*(*(v23 - 8) + 56))(v2, 0, 1, v23);
    ArtworkImage.ViewModel.init(artwork:cropStyle:)(v22, v2, v17);
    v21 = 0;
  }

  v24 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v24 - 8) + 56))(v17, v21, 1, v24);
  v25 = v18[6];
  v26 = sub_10010FC20(&unk_101182950);
  (*(*(v26 - 8) + 56))(&v20[v25], 10, 11, v26);
  sub_10003D17C(v17, v20, &unk_10118A5E0);
  v27 = &v20[v18[5]];
  *v27 = 0;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  v20[v18[7]] = 0;
  *&v20[v18[8]] = 0x3FF0000000000000;
  v28 = &v20[v18[9]];
  *v28 = xmmword_100EC1B40;
  v28[16] = 1;
  v29 = Genre.name.getter();
  v31 = v30;
  type metadata accessor for ContextualPreview.Data(0);
  v32 = swift_allocObject();
  v33 = (v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v37 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v20, v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v29, v31);
  if (v34[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v43 - 3) = 0;
    *(&v43 - 2) = 0;
    *(&v43 - 4) = v32;
    v45 = v32;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v35[1])
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v34 = 0;
    v34[1] = 0;
    if (v35[1])
    {
LABEL_6:
      v39 = swift_getKeyPath();
      __chkstk_darwin(v39);
      *(&v43 - 3) = 0;
      *(&v43 - 2) = 0;
      *(&v43 - 4) = v32;
      v45 = v32;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (*(v32 + v36))
      {
        goto LABEL_7;
      }

LABEL_11:
      v40 = swift_getKeyPath();
      __chkstk_darwin(v40);
      *(&v43 - 2) = v32;
      *(&v43 - 8) = 1;
      v45 = v32;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if ((*(v32 + v37) & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v41 = swift_getKeyPath();
      __chkstk_darwin(v41);
      *(&v43 - 2) = v32;
      *(&v43 - 8) = 0;
      v45 = v32;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10024DE78(v20, type metadata accessor for ContextualPreview.Artwork);
      return v32;
    }
  }

  *v35 = 0;
  v35[1] = 0;
  if ((*(v32 + v36) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  *(v32 + v36) = 1;
  if (*(v32 + v37))
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_10024DE78(v20, type metadata accessor for ContextualPreview.Artwork);
  *(v32 + v37) = 0;
  return v32;
}

uint64_t sub_100246AB0()
{
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicMovie();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for MusicMovie, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 6, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FE5555555555555;
  v8 = &v3[v1[11]];
  *v8 = xmmword_100EC1B40;
  v8[16] = 1;
  v9 = MusicMovie.title.getter();
  v11 = v10;
  type metadata accessor for ContextualPreview.Data(0);
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v15 = 0;
  v15[1] = 0;
  v23 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v24 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v12 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v9, v11);
  if (v14[1])
  {
    KeyPath = swift_getKeyPath();
    v22[1] = v22;
    __chkstk_darwin(KeyPath);
    v22[-3] = 0;
    v22[-2] = 0;
    v22[-4] = v12;
    v25 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v15[1])
    {
LABEL_3:
      v17 = swift_getKeyPath();
      __chkstk_darwin(v17);
      v22[-3] = 0;
      v22[-2] = 0;
      v22[-4] = v12;
      v25 = v12;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_6;
    }
  }

  else
  {
    *v14 = 0;
    v14[1] = 0;
    if (v15[1])
    {
      goto LABEL_3;
    }
  }

  *v15 = 0;
  v15[1] = 0;
LABEL_6:
  if (*(v12 + v23))
  {
    *(v12 + v23) = 1;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    v22[-2] = v12;
    LOBYTE(v22[-1]) = 1;
    v25 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v19 = v24;
  if (*(v12 + v24))
  {
    v20 = swift_getKeyPath();
    __chkstk_darwin(v20);
    v22[-2] = v12;
    LOBYTE(v22[-1]) = 0;
    v25 = v12;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v12 + v19) = 0;
  }

  return v12;
}

uint64_t sub_100247018()
{
  v24[1] = 0;
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v3);
  v4 = v1[8];
  Playlist.variant.getter();
  v5 = sub_10010FC20(&unk_101182950);
  (*(*(v5 - 8) + 56))(&v3[v4], 0, 11, v5);
  v6 = &v3[v1[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FF0000000000000;
  v7 = &v3[v1[11]];
  *v7 = xmmword_100EC1B40;
  v7[16] = 1;
  v8 = Playlist.name.getter();
  v10 = v9;
  v11 = Playlist.curatorName.getter();
  v13 = v12;
  type metadata accessor for ContextualPreview.Data(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v24[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v8, v10);
  sub_100242ABC(v11, v13);
  if (v17[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v24[-3] = 0;
    v24[-2] = 0;
    v24[-4] = v14;
    v25 = v14;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v14 + v18))
    {
LABEL_3:
      *(v14 + v18) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v17 = 0;
    v17[1] = 0;
    if (*(v14 + v18))
    {
      goto LABEL_3;
    }
  }

  v20 = swift_getKeyPath();
  __chkstk_darwin(v20);
  v24[-2] = v14;
  LOBYTE(v24[-1]) = 1;
  v25 = v14;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v21 = v24[0];
  if (*(v14 + v24[0]))
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    v24[-2] = v14;
    LOBYTE(v24[-1]) = 0;
    v25 = v14;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v14 + v21) = 0;
  }

  return v14;
}

uint64_t sub_1002474C4()
{
  v0 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v39 - v1;
  v3 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  if (qword_10117F238 != -1)
  {
    swift_once();
  }

  sub_1001740C0();
  sub_100177D14(v40);
  v8 = v7;

  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel);
    v39 = *(v8 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 8);
    v10 = *(v8 + OBJC_IVAR____TtCOE5MusicO9MusicCore7Library7Folders11PreviewData_viewModel + 16);
  }

  else
  {
    ArtworkImage.GridPreview.ViewModel.init(items:numberOfRows:numberOfColumns:)();
    v9 = v11;
    v39 = v12;
    v10 = v13;
  }

  v14 = v3[6];
  v15 = enum case for Playlist.Variant.folder(_:);
  v16 = type metadata accessor for Playlist.Variant();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v5[v14], v15, v16);
  (*(v17 + 56))(&v5[v14], 0, 1, v16);
  v18 = sub_10010FC20(&unk_101182950);
  (*(*(v18 - 8) + 56))(&v5[v14], 0, 11, v18);
  sub_10003D17C(v2, v5, &unk_10118A5E0);
  v19 = &v5[v3[5]];
  v20 = v39;
  *v19 = v9;
  *(v19 + 1) = v20;
  *(v19 + 2) = v10;
  v5[v3[7]] = 1;
  *&v5[v3[8]] = 0x3FF0000000000000;
  v21 = &v5[v3[9]];
  *v21 = xmmword_100EC1B40;
  v21[16] = 1;
  v22 = v40;
  v23 = Playlist.Folder.name.getter();
  v25 = v24;
  v26 = sub_100174488(v22);
  v28 = v27;
  type metadata accessor for ContextualPreview.Data(0);
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v40 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v5, v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v23, v25);
  sub_100242ABC(v26, v28);
  if (v32[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v39 - 3) = 0;
    *(&v39 - 2) = 0;
    *(&v39 - 4) = v29;
    v41 = v29;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v29 + v33))
    {
LABEL_8:
      *(v29 + v33) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    *v32 = 0;
    v32[1] = 0;
    if (*(v29 + v33))
    {
      goto LABEL_8;
    }
  }

  v35 = swift_getKeyPath();
  __chkstk_darwin(v35);
  *(&v39 - 2) = v29;
  *(&v39 - 8) = 1;
  v41 = v29;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_11:
  v36 = v40;
  if (*(v29 + v40))
  {
    v37 = swift_getKeyPath();
    __chkstk_darwin(v37);
    *(&v39 - 2) = v29;
    *(&v39 - 8) = 0;
    v41 = v29;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
    *(v29 + v36) = 0;
  }

  return v29;
}

uint64_t sub_100247B68()
{
  v0 = sub_10010FC20(&qword_1011866A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = type metadata accessor for ContextualPreview.Artwork(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RadioShow();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v10, &protocol witness table for RadioShow, v9);
  v11 = v7[8];
  v12 = sub_10010FC20(&unk_101182950);
  (*(*(v12 - 8) + 56))(&v9[v11], 9, 11, v12);
  v13 = &v9[v7[7]];
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v9[v7[9]] = 0;
  *&v9[v7[10]] = 0x3FF0000000000000;
  v14 = &v9[v7[11]];
  *v14 = xmmword_100EC1B40;
  v14[16] = 1;
  v15 = RadioShow.name.getter();
  v36 = v16;
  v37 = v15;
  RadioShow.editorialNotes.getter();
  v17 = type metadata accessor for EditorialNotes();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v5, 1, v17) == 1)
  {
    sub_1000095E8(v5, &qword_1011866A0);
  }

  else
  {
    v20 = EditorialNotes.short.getter();
    v22 = v21;
    (*(v18 + 8))(v5, v17);
    if (v22)
    {
      v23 = v20;
      goto LABEL_10;
    }
  }

  RadioShow.editorialNotes.getter();
  if (v19(v2, 1, v17) == 1)
  {
    sub_1000095E8(v2, &qword_1011866A0);
  }

  else
  {
    v23 = EditorialNotes.standard.getter();
    v22 = v24;
    (*(v18 + 8))(v2, v17);
    if (v22)
    {

      goto LABEL_10;
    }
  }

  v23 = RadioShow.hostName.getter();
  v22 = v25;
  swift_bridgeObjectRelease_n();
LABEL_10:
  type metadata accessor for ContextualPreview.Data(0);
  v26 = swift_allocObject();
  v27 = (v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v31 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v9, v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v37, v36);
  sub_100242ABC(v23, v22);
  if (v29[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v36 - 3) = 0;
    *(&v36 - 2) = 0;
    *(&v36 - 4) = v26;
    v38 = v26;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v26 + v30))
    {
      goto LABEL_12;
    }

LABEL_15:
    v33 = swift_getKeyPath();
    __chkstk_darwin(v33);
    *(&v36 - 2) = v26;
    *(&v36 - 8) = 1;
    v38 = v26;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((*(v26 + v31) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v34 = swift_getKeyPath();
    __chkstk_darwin(v34);
    *(&v36 - 2) = v26;
    *(&v36 - 8) = 0;
    v38 = v26;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v9, type metadata accessor for ContextualPreview.Artwork);
    return v26;
  }

  *v29 = 0;
  v29[1] = 0;
  if ((*(v26 + v30) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  *(v26 + v30) = 1;
  if (*(v26 + v31))
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_10024DE78(v9, type metadata accessor for ContextualPreview.Artwork);
  *(v26 + v31) = 0;
  return v26;
}

uint64_t sub_1002481C0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for ContextualPreview.Artwork(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordLabel();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v6, &protocol witness table for RecordLabel, v5);
  v7 = v3[8];
  v8 = sub_10010FC20(&unk_101182950);
  (*(*(v8 - 8) + 56))(&v5[v7], 11, 11, v8);
  v9 = &v5[v3[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  v5[v3[9]] = 0;
  *&v5[v3[10]] = 0x3FF0000000000000;
  v10 = &v5[v3[11]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 2;
  v11 = RecordLabel.name.getter();
  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  type metadata accessor for ContextualPreview.Data(0);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v27[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v5, v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v11, v13);
  sub_100242ABC(v14, v16);
  if (v20[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v17;
    v28 = v17;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v17 + v21))
    {
LABEL_3:
      *(v17 + v21) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v20 = 0;
    v20[1] = 0;
    if (*(v17 + v21))
    {
      goto LABEL_3;
    }
  }

  v23 = swift_getKeyPath();
  __chkstk_darwin(v23);
  v27[-2] = v17;
  LOBYTE(v27[-1]) = 1;
  v28 = v17;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v24 = v27[0];
  if (*(v17 + v27[0]))
  {
    v25 = swift_getKeyPath();
    __chkstk_darwin(v25);
    v27[-2] = v17;
    LOBYTE(v27[-1]) = 0;
    v28 = v17;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
    *(v17 + v24) = 0;
  }

  return v17;
}

uint64_t sub_100248748()
{
  v25[1] = 0;
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SocialProfile();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for SocialProfile, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 8, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FF0000000000000;
  v8 = &v3[v1[11]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 2;
  v9 = SocialProfile.name.getter();
  v11 = v10;
  v12 = SocialProfile.handle.getter();
  v14 = v13;
  type metadata accessor for ContextualPreview.Data(0);
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v25[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v9, v11);
  sub_100242ABC(v12, v14);
  if (v18[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v25[-3] = 0;
    v25[-2] = 0;
    v25[-4] = v15;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v15 + v19))
    {
LABEL_3:
      *(v15 + v19) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
    if (*(v15 + v19))
    {
      goto LABEL_3;
    }
  }

  v21 = swift_getKeyPath();
  __chkstk_darwin(v21);
  v25[-2] = v15;
  LOBYTE(v25[-1]) = 1;
  v26 = v15;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v22 = v25[0];
  if (*(v15 + v25[0]))
  {
    v23 = swift_getKeyPath();
    __chkstk_darwin(v23);
    v25[-2] = v15;
    LOBYTE(v25[-1]) = 0;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v15 + v22) = 0;
  }

  return v15;
}

uint64_t sub_100248BF8()
{
  v55 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v1 = &v54 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date.FormatStyle();
  v56 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  v8 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for ContextualPreview.Artwork(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Song();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v15, &protocol witness table for Song, v14);
  v16 = v12[8];
  v17 = sub_10010FC20(&unk_101182950);
  (*(*(v17 - 8) + 56))(&v14[v16], 1, 11, v17);
  v18 = &v14[v12[7]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v14[v12[9]] = 0;
  *&v14[v12[10]] = 0x3FF0000000000000;
  v19 = &v14[v12[11]];
  *v19 = xmmword_100EC1B40;
  v19[16] = 1;
  v20 = Song.title.getter();
  v60 = v21;
  v61 = v20;
  v22 = Song.artistName.getter();
  v58 = v23;
  v59 = v22;
  v64 = Song.albumTitle.getter();
  v65 = v24;
  v25 = Song.releaseYearString.getter();
  if (v26)
  {
    v66 = v25;
    v67 = v26;
  }

  else
  {
    v27 = v57;
    v54 = v2;
    Song.releaseDate.getter();
    v28 = type metadata accessor for Date();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v10, 1, v28) == 1)
    {
      sub_1000095E8(v10, &qword_101188C20);
      v66 = 0;
      v67 = 0;
    }

    else
    {
      static FormatStyle<>.dateTime.getter();
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      Date.FormatStyle.year(_:)();
      (*(v27 + 8))(v1, v55);
      v30 = *(v56 + 8);
      v31 = v4;
      v32 = v54;
      v30(v31, v54);
      sub_10024E004(&unk_1011A3900, &type metadata accessor for Date.FormatStyle);
      Date.formatted<A>(_:)();
      v30(v7, v32);
      (*(v29 + 8))(v10, v28);
      v66 = v62;
      v67 = v63;
    }
  }

  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
LABEL_7:
  v35 = &v65 + 2 * v33;
  while (++v33 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v38 = *(v36 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100498B7C(0, *(v34 + 2) + 1, 1, v34);
      }

      v40 = *(v34 + 2);
      v39 = *(v34 + 3);
      if (v40 >= v39 >> 1)
      {
        v34 = sub_100498B7C((v39 > 1), v40 + 1, 1, v34);
      }

      *(v34 + 2) = v40 + 1;
      v41 = &v34[16 * v40];
      *(v41 + 4) = v38;
      *(v41 + 5) = v37;
      goto LABEL_7;
    }
  }

  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  v62 = v34;
  sub_10010FC20(&qword_101183BC8);
  sub_100020674(&unk_101183BD0, &qword_101183BC8);
  v42 = BidirectionalCollection<>.joined(separator:)();
  v44 = v43;

  type metadata accessor for ContextualPreview.Data(0);
  v45 = swift_allocObject();
  v46 = (v45 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v45 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v45 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v48 = 0;
  v48[1] = 0;
  v49 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v45 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v50 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v45 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v14, v45 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v61, v60);
  sub_100242ABC(v59, v58);
  sub_100242C68(v42, v44);
  if (*(v45 + v49))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v54 - 2) = v45;
    *(&v54 - 8) = 0;
    v62 = v45;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v45 + v49) = 0;
  }

  if (*(v45 + v50) == 1)
  {
    sub_10024DE78(v14, type metadata accessor for ContextualPreview.Artwork);
    *(v45 + v50) = 1;
  }

  else
  {
    v52 = swift_getKeyPath();
    __chkstk_darwin(v52);
    *(&v54 - 2) = v45;
    *(&v54 - 8) = 1;
    v62 = v45;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v14, type metadata accessor for ContextualPreview.Artwork);
  }

  return v45;
}

uint64_t sub_1002493F8()
{
  v0 = sub_10010FC20(&qword_1011866A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for ContextualPreview.Artwork(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Station();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v7, &protocol witness table for Station, v6);
  v8 = v4[8];
  v9 = sub_10010FC20(&unk_101182950);
  (*(*(v9 - 8) + 56))(&v6[v8], 9, 11, v9);
  v10 = &v6[v4[7]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  v6[v4[9]] = 0;
  *&v6[v4[10]] = 0x3FF0000000000000;
  v11 = &v6[v4[11]];
  *v11 = xmmword_100EC1B40;
  v11[16] = 1;
  v12 = Station.name.getter();
  v32 = v13;
  v14 = Station.stationProviderName.getter();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    Station.editorialNotes.getter();
    v18 = type metadata accessor for EditorialNotes();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v2, 1, v18) == 1)
    {
      sub_1000095E8(v2, &qword_1011866A0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = EditorialNotes.standard.getter();
      v17 = v20;
      (*(v19 + 8))(v2, v18);
    }
  }

  type metadata accessor for ContextualPreview.Data(0);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v21 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v21 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v21 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v26 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v21 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v6, v21 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v12, v32);
  sub_100242ABC(v16, v17);
  if (v24[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v31 - 3) = 0;
    *(&v31 - 2) = 0;
    *(&v31 - 4) = v21;
    v33 = v21;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v21 + v25))
    {
      goto LABEL_8;
    }

LABEL_11:
    v28 = swift_getKeyPath();
    __chkstk_darwin(v28);
    *(&v31 - 2) = v21;
    *(&v31 - 8) = 1;
    v33 = v21;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((*(v21 + v26) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v29 = swift_getKeyPath();
    __chkstk_darwin(v29);
    *(&v31 - 2) = v21;
    *(&v31 - 8) = 0;
    v33 = v21;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v6, type metadata accessor for ContextualPreview.Artwork);
    return v21;
  }

  *v24 = 0;
  v24[1] = 0;
  if ((*(v21 + v25) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v21 + v25) = 1;
  if (*(v21 + v26))
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_10024DE78(v6, type metadata accessor for ContextualPreview.Artwork);
  *(v21 + v26) = 0;
  return v21;
}

uint64_t sub_100249998()
{
  v24[1] = 0;
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TVEpisode.artworkViewModel.getter(v3);
  v4 = v1[8];
  v5 = sub_10010FC20(&unk_101182950);
  (*(*(v5 - 8) + 56))(&v3[v4], 6, 11, v5);
  v6 = &v3[v1[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FFC71C71C71C71CLL;
  v7 = &v3[v1[11]];
  *v7 = xmmword_100EC1B40;
  v7[16] = 1;
  v8 = TVEpisode.title.getter();
  v10 = v9;
  v11 = TVEpisode.showName.getter();
  v13 = v12;
  type metadata accessor for ContextualPreview.Data(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v24[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v8, v10);
  sub_100242ABC(v11, v13);
  if (v17[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v24[-3] = 0;
    v24[-2] = 0;
    v24[-4] = v14;
    v25 = v14;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v14 + v18))
    {
LABEL_3:
      *(v14 + v18) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v17 = 0;
    v17[1] = 0;
    if (*(v14 + v18))
    {
      goto LABEL_3;
    }
  }

  v20 = swift_getKeyPath();
  __chkstk_darwin(v20);
  v24[-2] = v14;
  LOBYTE(v24[-1]) = 1;
  v25 = v14;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v21 = v24[0];
  if (*(v14 + v24[0]))
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    v24[-2] = v14;
    LOBYTE(v24[-1]) = 0;
    v25 = v14;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v14 + v21) = 0;
  }

  return v14;
}

uint64_t sub_100249E48()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for ContextualPreview.Artwork(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVSeason();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v6, &protocol witness table for TVSeason, v5);
  v7 = v3[8];
  v8 = sub_10010FC20(&unk_101182950);
  (*(*(v8 - 8) + 56))(&v5[v7], 6, 11, v8);
  v9 = &v5[v3[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  v5[v3[9]] = 0;
  *&v5[v3[10]] = 0x3FF0000000000000;
  v10 = &v5[v3[11]];
  *v10 = xmmword_100EC1B40;
  v10[16] = 1;
  v11 = TVSeason.showName.getter();
  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  type metadata accessor for ContextualPreview.Data(0);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v27[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v5, v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v11, v13);
  sub_100242ABC(v14, v16);
  if (v20[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v17;
    v28 = v17;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v17 + v21))
    {
LABEL_3:
      *(v17 + v21) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v20 = 0;
    v20[1] = 0;
    if (*(v17 + v21))
    {
      goto LABEL_3;
    }
  }

  v23 = swift_getKeyPath();
  __chkstk_darwin(v23);
  v27[-2] = v17;
  LOBYTE(v27[-1]) = 1;
  v28 = v17;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v24 = v27[0];
  if (*(v17 + v27[0]))
  {
    v25 = swift_getKeyPath();
    __chkstk_darwin(v25);
    v27[-2] = v17;
    LOBYTE(v27[-1]) = 0;
    v28 = v17;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
    *(v17 + v24) = 0;
  }

  return v17;
}

uint64_t sub_10024A3CC()
{
  v31 = 0;
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for ContextualPreview.Artwork(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVShow();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v6, &protocol witness table for TVShow, v5);
  v7 = v3[8];
  v8 = sub_10010FC20(&unk_101182950);
  (*(*(v8 - 8) + 56))(&v5[v7], 6, 11, v8);
  v9 = &v5[v3[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  v5[v3[9]] = 0;
  *&v5[v3[10]] = 0x3FF0000000000000;
  v10 = &v5[v3[11]];
  *v10 = xmmword_100EC1B40;
  v10[16] = 1;
  v11 = TVShow.name.getter();
  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10010FC20(&qword_101186688);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  v15 = TVShow.episodeCount.getter();
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v15;
  v16 = static String.localizedStringWithFormat(_:_:)();
  v18 = v17;

  type metadata accessor for ContextualPreview.Data(0);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v30 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v5, v19 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v11, v13);
  sub_100242ABC(v16, v18);
  if (v22[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v29 - 3) = 0;
    *(&v29 - 2) = 0;
    *(&v29 - 4) = v19;
    v32 = v19;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v19 + v23))
    {
LABEL_3:
      *(v19 + v23) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v22 = 0;
    v22[1] = 0;
    if (*(v19 + v23))
    {
      goto LABEL_3;
    }
  }

  v25 = swift_getKeyPath();
  __chkstk_darwin(v25);
  *(&v29 - 2) = v19;
  *(&v29 - 8) = 1;
  v32 = v19;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v26 = v30;
  if (*(v19 + v30))
  {
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v29 - 2) = v19;
    *(&v29 - 8) = 0;
    v32 = v19;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v5, type metadata accessor for ContextualPreview.Artwork);
    *(v19 + v26) = 0;
  }

  return v19;
}

uint64_t sub_10024A9DC()
{
  v25[1] = 0;
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UploadedAudio();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for UploadedAudio, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FF0000000000000;
  v8 = &v3[v1[11]];
  *v8 = xmmword_100EC1B40;
  v8[16] = 1;
  v9 = UploadedAudio.title.getter();
  v11 = v10;
  v12 = UploadedAudio.artistName.getter();
  v14 = v13;
  type metadata accessor for ContextualPreview.Data(0);
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v25[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v9, v11);
  sub_100242ABC(v12, v14);
  if (v18[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v25[-3] = 0;
    v25[-2] = 0;
    v25[-4] = v15;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v15 + v19))
    {
LABEL_3:
      v21 = swift_getKeyPath();
      __chkstk_darwin(v21);
      v25[-2] = v15;
      LOBYTE(v25[-1]) = 0;
      v26 = v15;
      sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_6;
    }
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
    if (*(v15 + v19))
    {
      goto LABEL_3;
    }
  }

  *(v15 + v19) = 0;
LABEL_6:
  v22 = v25[0];
  if (*(v15 + v25[0]) == 1)
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v15 + v22) = 1;
  }

  else
  {
    v23 = swift_getKeyPath();
    __chkstk_darwin(v23);
    v25[-2] = v15;
    LOBYTE(v25[-1]) = 1;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  return v15;
}

uint64_t sub_10024AE94()
{
  v0 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UploadedVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v12, &protocol witness table for UploadedVideo, v8);
  v13 = sub_10010FC20(&unk_101182950);
  (*(*(v13 - 8) + 56))(v2, 6, 11, v13);
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v12, &protocol witness table for UploadedVideo, v5);
  v14 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_1000095E8(v5, &unk_10118A5E0);
  }

  else
  {
    v15 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
    v17 = v16;
    sub_10024DE78(v5, type metadata accessor for ArtworkImage.ViewModel);
    if ((v17 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v15 = 0x3FFC71C71C71C71CLL;
LABEL_5:
  sub_10003D17C(v8, v11, &unk_10118A5E0);
  v18 = &v11[v9[5]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  sub_10024E06C(v2, &v11[v9[6]], type metadata accessor for ArtworkImage.Placeholder);
  v11[v9[7]] = 0;
  *&v11[v9[8]] = v15;
  v19 = &v11[v9[9]];
  *v19 = xmmword_100EC1B40;
  v19[16] = 1;
  v20 = UploadedVideo.title.getter();
  v22 = v21;
  v23 = UploadedVideo.artistName.getter();
  v25 = v24;
  type metadata accessor for ContextualPreview.Data(0);
  v26 = swift_allocObject();
  v27 = (v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v37 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v11, v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v20, v22);
  sub_100242ABC(v23, v25);
  if (v29[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v36 - 3) = 0;
    *(&v36 - 2) = 0;
    *(&v36 - 4) = v26;
    v38 = v26;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v26 + v30))
    {
LABEL_7:
      *(v26 + v30) = 1;
      goto LABEL_10;
    }
  }

  else
  {
    *v29 = 0;
    v29[1] = 0;
    if (*(v26 + v30))
    {
      goto LABEL_7;
    }
  }

  v32 = swift_getKeyPath();
  __chkstk_darwin(v32);
  *(&v36 - 2) = v26;
  *(&v36 - 8) = 1;
  v38 = v26;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_10:
  v33 = v37;
  if (*(v26 + v37))
  {
    v34 = swift_getKeyPath();
    __chkstk_darwin(v34);
    *(&v36 - 2) = v26;
    *(&v36 - 8) = 0;
    v38 = v26;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v11, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v11, type metadata accessor for ContextualPreview.Artwork);
    *(v26 + v33) = 0;
  }

  return v26;
}

uint64_t sub_10024B50C()
{
  v1 = v0;
  v2 = type metadata accessor for UploadedVideo();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UploadedAudio();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVEpisode();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicVideo();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Playlist.Entry.InternalItem();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v35[1] = v1;
  v23(v22, v1, v18, v20);
  v24 = (*(v19 + 88))(v22, v18);
  if (v24 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    v25 = sub_100246AB0();
    (*(v15 + 8))(v17, v14);
    return v25;
  }

  if (v24 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v26 = v47;
    (*(v47 + 32))(v13, v22, v11);
    v25 = sub_10023D0E4();
    (*(v26 + 8))(v13, v11);
    return v25;
  }

  if (v24 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v19 + 96))(v22, v18);
    v28 = v45;
    v27 = v46;
    (*(v45 + 32))(v10, v22, v46);
    v25 = sub_100248BF8();
    (*(v28 + 8))(v10, v27);
    return v25;
  }

  if (v24 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v19 + 96))(v22, v18);
    v29 = v42;
    v30 = v43;
    v31 = v44;
    (*(v43 + 32))(v42, v22, v44);
    v32 = sub_100249998();
LABEL_13:
    v25 = v32;
    (*(v30 + 8))(v29, v31);
    return v25;
  }

  if (v24 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v19 + 96))(v22, v18);
    v29 = v36;
    v30 = v37;
    v31 = v38;
    (*(v37 + 32))(v36, v22, v38);
    v32 = sub_10024A9DC();
    goto LABEL_13;
  }

  if (v24 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v29 = v39;
    v30 = v40;
    v31 = v41;
    (*(v40 + 32))(v39, v22, v41);
    v32 = sub_10024AE94();
    goto LABEL_13;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v48 = 0xD000000000000028;
  v49 = 0x8000000100E42000;
  sub_10024E004(&qword_101186680, &type metadata accessor for Playlist.Entry.InternalItem);
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024BC40()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Folder();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v16 = sub_1002474C4();
    (*(v3 + 8))(v5, v2);
    return v16;
  }

  if (v15 == enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v16 = sub_100247018();
    (*(v7 + 8))(v9, v6);
    return v16;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v19 = 0xD000000000000021;
  v20 = 0x8000000100E420C0;
  sub_10024E004(&qword_101183228, &type metadata accessor for Playlist.Folder.Item);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024BFF8()
{
  v1 = type metadata accessor for Song();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicVideo();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artist();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v34 = v0;
  MusicPin.item.getter();
  v21 = (*(v15 + 88))(v20, v14);
  if (v21 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v20, v14);
    (*(v11 + 32))(v13, v20, v10);
    v22 = sub_10023CC30();
    (*(v11 + 8))(v13, v10);
    return v22;
  }

  if (v21 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v20, v14);
    v23 = v44;
    (*(v44 + 32))(v9, v20, v7);
    v22 = sub_100244A50();
    (*(v23 + 8))(v9, v7);
    return v22;
  }

  if (v21 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v20, v14);
    v24 = v41;
    v25 = v42;
    v26 = v20;
    v27 = v43;
    (*(v42 + 32))(v41, v26, v43);
    v28 = sub_10023D0E4();
LABEL_11:
    v22 = v28;
    (*(v25 + 8))(v24, v27);
    return v22;
  }

  if (v21 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v20, v14);
    v24 = v35;
    v25 = v36;
    v29 = v20;
    v27 = v37;
    (*(v36 + 32))(v35, v29, v37);
    v28 = sub_100247018();
    goto LABEL_11;
  }

  if (v21 == enum case for MusicPin.Item.song(_:))
  {
    (*(v15 + 96))(v20, v14);
    v24 = v38;
    v25 = v39;
    v30 = v20;
    v27 = v40;
    (*(v39 + 32))(v38, v30, v40);
    v28 = sub_100248BF8();
    goto LABEL_11;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v45 = 0xD00000000000001ALL;
  v46 = 0x8000000100E42080;
  MusicPin.item.getter();
  sub_10024E004(&qword_101186690, &type metadata accessor for MusicPin.Item);
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  (*(v15 + 8))(v17, v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024C694()
{
  v1 = v0;
  v2 = type metadata accessor for UploadedVideo();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVSeason();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicVideo();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v44 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicMovie();
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentlyAddedMusicItem();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v35[1] = v1;
  v23(v22, v1, v18, v20);
  v24 = (*(v19 + 88))(v22, v18);
  if (v24 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    v25 = sub_10023CC30();
    (*(v15 + 8))(v17, v14);
    return v25;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    v26 = v47;
    (*(v47 + 32))(v10, v22, v8);
    v25 = sub_100246AB0();
    (*(v26 + 8))(v10, v8);
    return v25;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v44;
    v28 = v45;
    v29 = v46;
    (*(v45 + 32))(v44, v22, v46);
    v30 = sub_10023D0E4();
LABEL_7:
    v25 = v30;
    (*(v28 + 8))(v27, v29);
    return v25;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v32 = v42;
    v31 = v43;
    (*(v42 + 32))(v13, v22, v43);
    v25 = sub_100247018();
    (*(v32 + 8))(v13, v31);
    return v25;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v36;
    v28 = v37;
    v29 = v38;
    (*(v37 + 32))(v36, v22, v38);
    v30 = sub_100249E48();
    goto LABEL_7;
  }

  if (v24 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v39;
    v28 = v40;
    v29 = v41;
    (*(v40 + 32))(v39, v22, v41);
    v30 = sub_10024AE94();
    goto LABEL_7;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  v34._object = 0x8000000100E42030;
  v34._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v34);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024CD8C()
{
  v1 = v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v16 = sub_100248BF8();
    (*(v7 + 8))(v9, v6);
    return v16;
  }

  if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v16 = sub_10023D0E4();
    (*(v3 + 8))(v5, v2);
    return v16;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v19 = 0xD000000000000017;
  v20 = 0x8000000100E420A0;
  sub_10024E004(&qword_101181A08, &type metadata accessor for Track);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10024D158()
{
  result = type metadata accessor for ContextualPreview.Artwork(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10024D30C()
{
  sub_10024E308(319, &qword_101186610, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10024D3F4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ArtworkImage.Placeholder(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10024D3F4()
{
  if (!qword_101186618)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101186618);
    }
  }
}

unint64_t sub_10024D464()
{
  result = qword_101186658;
  if (!qword_101186658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186658);
  }

  return result;
}

BOOL sub_10024D4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&qword_101186660);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v15 = *(v14 + 56);
  sub_1000089F8(a1, &v32 - v12, &unk_10118A5E0);
  sub_1000089F8(a2, &v13[v15], &unk_10118A5E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000089F8(v13, v10, &unk_10118A5E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_10024E06C(&v13[v15], v7, type metadata accessor for ArtworkImage.ViewModel);
      v19 = static ArtworkImage.ViewModel.__derived_struct_equals(_:_:)(v10, v7);
      sub_10024DE78(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_10024DE78(v10, type metadata accessor for ArtworkImage.ViewModel);
      sub_1000095E8(v13, &unk_10118A5E0);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_10024DE78(v10, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_1000095E8(v13, &qword_101186660);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000095E8(v13, &unk_10118A5E0);
LABEL_10:
  v20 = type metadata accessor for ContextualPreview.Artwork(0);
  v21 = v20[5];
  v22 = a1 + v21;
  v23 = *(a1 + v21);
  v24 = (a2 + v21);
  v25 = *v24;
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = *(v22 + 8);
    v27 = *(v22 + 16);
    v28 = v24[1];
    v29 = v24[2];

    v30 = static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(v23, v26, v27, v25, v28, v29);

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if ((static ArtworkImage.Placeholder.__derived_enum_equals(_:_:)(a1 + v20[6], a2 + v20[6]) & 1) != 0 && *(a1 + v20[7]) == *(a2 + v20[7]) && *(a1 + v20[8]) == *(a2 + v20[8]))
  {
    v31 = v20[9];
    return static Corner.__derived_enum_equals(_:_:)(*(a1 + v31), *(a1 + v31 + 8), *(a1 + v31 + 16), *(a2 + v31), *(a2 + v31 + 8), *(a2 + v31 + 16));
  }

  return 0;
}

uint64_t sub_10024D86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualPreview.Artwork(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data___observationRegistrar;
  v37 = a1;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  v34 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(a1 + v11, v9, type metadata accessor for ContextualPreview.Artwork);
  swift_getKeyPath();
  v36 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(a2 + v12, v6, type metadata accessor for ContextualPreview.Artwork);
  LOBYTE(v12) = sub_10024D4C4(v9, v6);
  sub_10024DE78(v6, type metadata accessor for ContextualPreview.Artwork);
  sub_10024DE78(v9, type metadata accessor for ContextualPreview.Artwork);
  if ((v12 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_getKeyPath();
  v35 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = a1;
  v14 = *(a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  v13 = *(a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title + 8);
  swift_getKeyPath();
  v35 = a2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title + 8);
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    if (v14 == *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title) && v13 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  swift_getKeyPath();
  v17 = v33;
  v35 = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle;
  v20 = *(v17 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  v19 = *(v18 + 8);
  swift_getKeyPath();
  v35 = a2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle + 8);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_23;
    }

    if (v20 == *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle) && v19 == v21)
    {

      v22 = v33;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22 = v33;
      if ((v23 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v22 = v33;
    if (v21)
    {
      goto LABEL_24;
    }
  }

  swift_getKeyPath();
  v35 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v22 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  v24 = *(v22 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText + 8);
  swift_getKeyPath();
  v35 = a2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText + 8);
  if (!v24)
  {
    if (v26)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (!v26)
  {
LABEL_23:

    goto LABEL_24;
  }

  if (v25 == *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText) && v24 == v26)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_29:
  swift_getKeyPath();
  v35 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v22 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle);
  swift_getKeyPath();
  v35 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v30 == *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle))
  {
    swift_getKeyPath();
    v35 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v22 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron);
    swift_getKeyPath();
    v35 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = v31 ^ *(a2 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) ^ 1;
    return v27 & 1;
  }

LABEL_24:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10024DE30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_10024DE78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024DF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024DFB0()
{
  result = qword_101186670;
  if (!qword_101186670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186670);
  }

  return result;
}

uint64_t sub_10024E004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024E06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024E0F4(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_10024E15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualPreview.Artwork(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024E1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualPreview.Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10024E24C()
{
  type metadata accessor for ContextualPreview.Data(319);
  if (v0 <= 0x3F)
  {
    sub_10024E308(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10024E308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TransportControlsController.ButtonConfiguration.Description(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10024E380(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10024E3C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10024E418()
{
  result = qword_101186740;
  if (!qword_101186740)
  {
    sub_1001109D0(&qword_101186748);
    sub_10024DFB0();
    sub_10024E004(&qword_101186678, type metadata accessor for ContextualPreview.InlinePreview);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186740);
  }

  return result;
}

unint64_t sub_10024E50C()
{
  result = qword_101186788;
  if (!qword_101186788)
  {
    sub_1001109D0(&qword_101186770);
    sub_10024E598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186788);
  }

  return result;
}

unint64_t sub_10024E598()
{
  result = qword_101186790;
  if (!qword_101186790)
  {
    sub_1001109D0(&qword_101186768);
    sub_10024E624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186790);
  }

  return result;
}

unint64_t sub_10024E624()
{
  result = qword_101186798;
  if (!qword_101186798)
  {
    sub_1001109D0(&qword_101186760);
    sub_10024E6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186798);
  }

  return result;
}

unint64_t sub_10024E6B0()
{
  result = qword_1011867A0;
  if (!qword_1011867A0)
  {
    sub_1001109D0(&qword_101186758);
    sub_100020674(&qword_1011867A8, &qword_101186750);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011867A0);
  }

  return result;
}

unint64_t sub_10024E794()
{
  result = qword_1011867D8;
  if (!qword_1011867D8)
  {
    sub_1001109D0(&qword_1011867B8);
    sub_10024E84C();
    sub_100020674(&qword_1011867F0, &qword_1011867D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011867D8);
  }

  return result;
}

unint64_t sub_10024E84C()
{
  result = qword_1011867E0;
  if (!qword_1011867E0)
  {
    sub_1001109D0(&qword_1011867E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011867E0);
  }

  return result;
}

unint64_t sub_10024E8D0()
{
  result = qword_101191490;
  if (!qword_101191490)
  {
    sub_1001109D0(&qword_1011867F8);
    sub_10024E988();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191490);
  }

  return result;
}

unint64_t sub_10024E988()
{
  result = qword_1011914A0;
  if (!qword_1011914A0)
  {
    sub_1001109D0(&qword_101186800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011914A0);
  }

  return result;
}

uint64_t sub_10024EA04(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10011895C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10024EA48(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10021D0C0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10024EA98()
{
  result = qword_1011868A0;
  if (!qword_1011868A0)
  {
    sub_1001109D0(&qword_101186840);
    sub_10024EB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868A0);
  }

  return result;
}

unint64_t sub_10024EB24()
{
  result = qword_1011868A8;
  if (!qword_1011868A8)
  {
    sub_1001109D0(&qword_101186838);
    sub_10024EBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868A8);
  }

  return result;
}

unint64_t sub_10024EBB0()
{
  result = qword_1011868B0;
  if (!qword_1011868B0)
  {
    sub_1001109D0(&qword_101186830);
    sub_10024EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868B0);
  }

  return result;
}

unint64_t sub_10024EC3C()
{
  result = qword_1011868B8;
  if (!qword_1011868B8)
  {
    sub_1001109D0(&qword_101186828);
    sub_100020674(&qword_1011868C0, &qword_101186820);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868B8);
  }

  return result;
}

unint64_t sub_10024ED20()
{
  result = qword_1011868C8;
  if (!qword_1011868C8)
  {
    sub_1001109D0(&qword_101186880);
    sub_10024EDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868C8);
  }

  return result;
}

unint64_t sub_10024EDAC()
{
  result = qword_1011868D0;
  if (!qword_1011868D0)
  {
    sub_1001109D0(&qword_101186878);
    sub_10024EE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868D0);
  }

  return result;
}

unint64_t sub_10024EE38()
{
  result = qword_1011868D8;
  if (!qword_1011868D8)
  {
    sub_1001109D0(&qword_101186870);
    sub_10024EEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868D8);
  }

  return result;
}

unint64_t sub_10024EEC4()
{
  result = qword_1011868E0;
  if (!qword_1011868E0)
  {
    sub_1001109D0(&qword_101186868);
    sub_100020674(&qword_1011868E8, &qword_101186860);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011868E0);
  }

  return result;
}

unint64_t sub_10024EFB0()
{
  result = qword_101186958;
  if (!qword_101186958)
  {
    sub_1001109D0(&qword_101186960);
    sub_1001109D0(&qword_101186888);
    sub_1001109D0(&qword_101186880);
    sub_1001109D0(&qword_1011A1440);
    sub_10024ED20();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001109D0(&qword_101186840);
    sub_10024EA98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186958);
  }

  return result;
}

uint64_t sub_10024F1B0()
{
  type metadata accessor for PlaybackIndicator();
  swift_allocObject();
  return sub_100584950();
}

uint64_t sub_10024F1E8@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PlaybackIndicator();
  sub_10024F92C(&qword_101186998, type metadata accessor for PlaybackIndicator);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    [v6 state];
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    [v5 state];
  }

  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_10024F4DC@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = type metadata accessor for BorderedProminentButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101186968);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  v10 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v10;
  v17 = *(v1 + 32);
  v18 = v16[0];
  v19 = *(v1 + 16);
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 32);
  v14[4] = v16;
  sub_10024F8BC(&v18, v15);

  sub_10010FC20(&qword_101186978);
  sub_100020674(&qword_101186980, &qword_101186978);
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_101186988, &qword_101186968);
  sub_10024F92C(&qword_101186990, &type metadata accessor for BorderedProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10024F7D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10024F818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10024F8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101186970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024F92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024F994()
{
  v1 = v0[2];
  sub_10010FC20(&qword_101183990);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10024FA70;

  return sub_100256498(v2);
}

uint64_t sub_10024FA70(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10024FB90, 0, 0);
}

id sub_10024FB90()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    result = [*(v0 + 40) results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = [result allItems];

    sub_100009F78(0, &qword_101186EF0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10024FC74()
{
  v1[2] = v0;
  sub_10010FC20(&unk_101195200);
  v1[3] = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  v1[4] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10024FD98, 0, 0);
}

uint64_t sub_10024FD98()
{
  v1 = v0[6];
  UserProfile.artwork.getter();
  v2 = type metadata accessor for Artwork();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[6];
  v7 = v0[7];
  if (v5 == 1)
  {
    v8 = UserProfile.name.getter();
    static Artwork.monogramArtwork(for:layoutDirection:)(v8, v9, 0, 1, v7);

    if (v4(v6, 1, v2) != 1)
    {
      sub_1000095E8(v0[6], &unk_101188920);
    }
  }

  else
  {
    (*(v3 + 32))(v0[7], v0[6], v2);
    (*(v3 + 56))(v7, 0, 1, v2);
  }

  v10 = v0[5];
  sub_1000089F8(v0[7], v10, &unk_101188920);
  if (v4(v10, 1, v2) == 1)
  {
    v11 = v0[5];
    sub_1000095E8(v0[7], &unk_101188920);
    sub_1000095E8(v11, &unk_101188920);

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    if (qword_10117F3E8 != -1)
    {
      swift_once();
    }

    v15 = v0[3];
    v14 = v0[4];
    v16 = qword_1011869A0;
    v17 = [objc_opt_self() currentTraitCollection];
    [v17 displayScale];
    v19 = v18;

    v20 = type metadata accessor for Artwork.CropStyle();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    v21 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    v22 = swift_task_alloc();
    v0[10] = v22;
    *v22 = v0;
    v22[1] = sub_100250158;
    v24 = v0[4];
    v25 = v0[3];
    v26.n128_u64[0] = v16;
    v27.n128_u64[0] = v16;

    v23.n128_f64[0] = 1.0 / v19;
    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v24, v25, 0, 0, v26, v27, v23);
  }
}

uint64_t sub_100250158(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v7 = v4 + 3;
    v6 = v4[3];
    v5 = v7[1];

    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v8 = sub_1002503C4;
  }

  else
  {
    v9 = v4[8];
    v10 = v4[9];
    v12 = v4[4];
    v11 = v4[5];
    v13 = v4[3];
    v4[11] = a1;
    sub_1000095E8(v13, &unk_101195200);
    sub_1000095E8(v12, &unk_101184060);
    (*(v10 + 8))(v11, v9);
    v8 = sub_10025030C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10025030C()
{
  v1 = v0[11];
  sub_1000095E8(v0[7], &unk_101188920);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1002503C4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  sub_1000095E8(v0[7], &unk_101188920);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100250490()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_10010FC20(&qword_101186D80);
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_101186D88);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_10010FC20(&qword_101186D90);
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_10010FC20(&unk_101186D98);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v20 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
  v21 = _s7ContextVMa(0);
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  v22 = objc_allocWithZone(type metadata accessor for ReactionPickerView());
  v23 = ReactionPickerView.init(reactions:)();
  *(v0 + 48) = v23;
  v24 = v23;
  dispatch thunk of ReactionPickerView.$selectedReaction.getter();

  sub_100009F78(0, &qword_101182960);
  v25 = static OS_dispatch_queue.main.getter();
  v39 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_100020674(&unk_101186DA8, &qword_101186D80);
  sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v4, &qword_101182140);

  (*(v32 + 8))(v7, v5);
  sub_100020674(&qword_101186DB8, &qword_101186D88);
  sub_10025C454();
  v27 = v33;
  Publisher<>.removeDuplicates()();
  (*(v34 + 8))(v11, v27);
  sub_100020674(&qword_101186DD0, &qword_101186D90);
  v28 = v35;
  Publisher.dropFirst(_:)();
  (*(v36 + 8))(v15, v28);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&unk_101186DD8, &unk_101186D98);
  v29 = v37;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v19, v29);
  *(v1 + 40) = v30;

  return v1;
}

uint64_t sub_100250A38(void ***a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v92 = &v78 - v3;
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchTime();
  v83 = *(v94 - 8);
  v6 = __chkstk_darwin(v94);
  v82 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v78 - v8;
  v95 = type metadata accessor for Logger();
  v90 = *(v95 - 1);
  __chkstk_darwin(v95);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = _s7ContextVMa(0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101186DE8);
  v14 = __chkstk_darwin(v13 - 8);
  v81 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v80 = &v78 - v17;
  __chkstk_darwin(v16);
  v19 = &v78 - v18;
  v20 = sub_10010FC20(&qword_101186BB8);
  __chkstk_darwin(v20 - 8);
  v22 = &v78 - v21;
  v23 = _s7ContextV6SourceOMa(0);
  v100 = *(v23 - 8);
  v24 = *(v100 + 64);
  v25 = __chkstk_darwin(v23);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v96 = &v78 - v26;
  v27 = a1[1];
  v99 = *a1;
  v101 = v27;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result && (v29 = *(result + 56), v30 = *(result + 64), , result = , v30))
  {
    if (v101)
    {
      if (v29 == v99 && v30 == v101)
      {
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        return result;
      }
    }

    else
    {
    }
  }

  else if (!v101)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    (*(v100 + 56))(v22, 1, 1, v23);
    return sub_1000095E8(v22, &qword_101186BB8);
  }

  v33 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
  v34 = Strong;
  swift_beginAccess();
  sub_1000089F8(v34 + v33, v19, &unk_101186DE8);

  if ((*(v97 + 48))(v19, 1, v98))
  {
    sub_1000095E8(v19, &unk_101186DE8);
    goto LABEL_14;
  }

  sub_10025C4D8(v19, v12, _s7ContextVMa);
  sub_1000095E8(v19, &unk_101186DE8);
  sub_1000089F8(v12, v22, &qword_101186BB8);
  sub_10025C540(v12, _s7ContextVMa);
  if ((*(v100 + 48))(v22, 1, v23) == 1)
  {
    return sub_1000095E8(v22, &qword_101186BB8);
  }

  v35 = v96;
  sub_10025C794(v22, v96, _s7ContextV6SourceOMa);
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = *(v36 + 32);
    v38 = v37;

    if (v37)
    {
      v39 = Logger.collaboration.unsafeMutableAddressor();
      v40 = v90;
      v41 = v95;
      (*(v90 + 16))(v10, v39, v95);
      v42 = v101;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      v45 = os_log_type_enabled(v43, v44);
      v79 = v38;
      if (v45)
      {
        v46 = v40;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v102[0] = v48;
        *v47 = 136315138;
        aBlock = v99;
        v104 = v42;

        sub_10010FC20(&qword_1011815E0);
        v49 = String.init<A>(describing:)();
        v51 = sub_1000105AC(v49, v50, v102);
        v42 = v101;

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "[Reaction] Did react with=%s", v47, 0xCu);
        sub_10000959C(v48);
        v35 = v96;

        (*(v46 + 8))(v10, v95);
        v38 = v79;
      }

      else
      {

        (*(v40 + 8))(v10, v41);
      }

      v52 = *Reactions.StackView.model.getter();
      if (v42)
      {
        (*(v52 + 280))(1);

        sub_100009F78(0, &qword_101182960);
        v90 = static OS_dispatch_queue.main.getter();
        v53 = v82;
        static DispatchTime.now()();
        + infix(_:_:)();
        v95 = *(v83 + 8);
        (v95)(v53, v94);
        v54 = swift_allocObject();
        v55 = v99;
        v54[2] = v38;
        v54[3] = v55;
        v54[4] = v42;
        v107 = sub_10025C6D0;
        v108 = v54;
        aBlock = _NSConcreteStackBlock;
        v104 = 1107296256;
        v105 = sub_10002BC98;
        v106 = &unk_1010A23A0;
        v56 = _Block_copy(&aBlock);
        v57 = v38;

        v58 = v84;
        static DispatchQoS.unspecified.getter();
        v102[0] = _swiftEmptyArrayStorage;
        sub_10025C6DC(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
        sub_10010FC20(&qword_101182970);
        sub_100020674(&qword_101183F70, &qword_101182970);
        v59 = v86;
        v60 = v89;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v61 = v93;
        v62 = v90;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v56);

        (*(v88 + 8))(v59, v60);
        (*(v85 + 8))(v58, v87);
        (v95)(v61, v94);

        swift_beginAccess();
        v63 = swift_weakLoadStrong();
        if (v63)
        {
          v64 = *(v63 + 32);
          *(v63 + 32) = 0;
        }

        swift_beginAccess();
        v65 = swift_weakLoadStrong();
        v35 = v96;
        if (v65)
        {
          v66 = v65;
          v67 = v80;
          (*(v97 + 56))(v80, 1, 1, v98);
          v68 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
          swift_beginAccess();
          v69 = v81;
          sub_1000089F8(v66 + v68, v81, &unk_101186DE8);
          swift_beginAccess();
          sub_10025C724(v67, v66 + v68);
          swift_endAccess();
          sub_1002554FC(v69);

          sub_1000095E8(v69, &unk_101186DE8);
          sub_1000095E8(v67, &unk_101186DE8);
        }
      }

      else
      {
        (*(v52 + 136))(v99, 0);
      }

      v70 = type metadata accessor for TaskPriority();
      v71 = v92;
      (*(*(v70 - 8) + 56))(v92, 1, 1, v70);
      v72 = v91;
      sub_10025C4D8(v35, v91, _s7ContextV6SourceOMa);
      type metadata accessor for MainActor();
      v73 = v101;

      v74 = static MainActor.shared.getter();
      v75 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      *(v76 + 24) = &protocol witness table for MainActor;
      sub_10025C794(v72, v76 + v75, _s7ContextV6SourceOMa);
      v77 = (v76 + ((v24 + v75 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v77 = v99;
      v77[1] = v73;
      sub_1001F4CB8(0, 0, v71, &unk_100EC2770, v76);
    }
  }

  return sub_10025C540(v35, _s7ContextV6SourceOMa);
}

uint64_t sub_10025190C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*Reactions.StackView.model.getter() + 136);

  v5(a2, a3);

  v6 = *Reactions.StackView.model.getter();
  (*(v6 + 280))(0);
}

uint64_t sub_1002519F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for Logger();
  v6[3] = v9;
  v6[4] = *(v9 - 8);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_100251B18;

  return sub_100251EEC(a5, a6);
}

uint64_t sub_100251B18()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100251CDC;
  }

  else
  {
    v4 = sub_100251C74;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100251C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100251CDC()
{
  v22 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = Logger.collaboration.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = v0[4];
    v20 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Reaction] add reaction error=%s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100251EEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.ReactionRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Entry();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = _s7ContextV6SourceOMa(0);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1002520B0, 0, 0);
}

uint64_t sub_1002520B0()
{
  sub_10025C4D8(v0[4], v0[17], _s7ContextV6SourceOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    v0[20] = *v2;
    v3 = *(v2 + 1);
    v0[21] = v3;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_100252618;
    v6 = v0[2];
    v5 = v0[3];

    return sub_1002573C8(v6, v5, v3);
  }

  else
  {
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    v16 = v0[10];
    v17 = v0[14];
    v13 = v0[8];
    v12 = v0[9];
    v14 = *(sub_10010FC20(&qword_101183AD8) + 48);
    (*(v10 + 32))(v8, v2, v9);
    (*(v12 + 32))(v11, &v2[v14], v13);
    (*(v12 + 16))(v16, v11, v13);
    (*(v10 + 16))(v17, v8, v9);

    MusicCollaborativePlaylist.ReactionRequest.init(playlist:entry:reaction:)();
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_100252304;

    return MusicCollaborativePlaylist.ReactionRequest.response()();
  }
}

uint64_t sub_100252304()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100252518;
  }

  else
  {
    v2 = sub_100252418;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100252418()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100252518()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100252618()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1002527E0;
  }

  else
  {
    v2 = sub_10025272C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025272C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002527E0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100252894(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a3 & 1;
  v7 = type metadata accessor for Playlist.Entry();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101186D70);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v37 - v13;
  v15 = (&v37 + *(v12 + 56) - v13);
  *v14 = a2;
  v14[8] = v6;
  sub_10025C4D8(a1, v15, _s7ContextV6SourceOMa);
  _s7ContextV6SourceOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((a3 & 1) == 0)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v15;
      v24 = v15[1];

      v26 = 1 << *(a2 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(a2 + 64);
      v29 = (v26 + 63) >> 6;

      v30 = 0;
      if (v28)
      {
        while (1)
        {
          v31 = v30;
LABEL_14:
          v32 = *(*(a2 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v28)))));
          v33 = [v25 identifiers];
          v34 = [v32 intersectsSet:v33];

          if (v34)
          {
            break;
          }

          v28 &= v28 - 1;

          v30 = v31;
          if (!v28)
          {
            goto LABEL_11;
          }
        }

        if (*(a2 + 16) && (sub_1006BE548(v32), (v36 & 1) != 0))
        {
        }

        else
        {
        }
      }

      else
      {
LABEL_11:
        while (1)
        {
          v31 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v31 >= v29)
          {

            goto LABEL_22;
          }

          v28 = *(a2 + 64 + 8 * v31);
          ++v30;
          if (v28)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }

      return;
    }

LABEL_17:

    sub_1000095E8(v14, &unk_101186D70);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_17;
  }

  v17 = *(sub_10010FC20(&qword_101183AD8) + 48);
  (*(v8 + 32))(v10, v15, v7);

  v18 = Playlist.Entry.id.getter();
  if (*(a2 + 16))
  {
    sub_100019C10(v18, v19);
    v21 = v20;

    if (v21)
    {
      v22 = *(v8 + 8);

      v22(v10, v7);
      v23 = type metadata accessor for Playlist();
      (*(*(v23 - 8) + 8))(v15 + v17, v23);

      return;
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }

  v35 = type metadata accessor for Playlist();
  (*(*(v35 - 8) + 8))(v15 + v17, v35);
LABEL_22:
}

uint64_t sub_100252CE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100252D08, 0, 0);
}

uint64_t sub_100252D08()
{
  v1 = v0[2];
  if (v1)
  {
    sub_10010FC20(&qword_101183990);
    v2 = swift_allocObject();
    v0[4] = v2;
    *(v2 + 16) = xmmword_100EBC6C0;
    *(v2 + 32) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_100252E5C;

    return sub_10025CB70(v2);
  }

  else
  {
    type metadata accessor for MainActor();
    v0[8] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002531B8, v7, v6);
  }
}

uint64_t sub_100252E5C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100252F7C, 0, 0);
}

uint64_t sub_100252F7C()
{
  if (*(v0 + 48))
  {
    type metadata accessor for MainActor();
    *(v0 + 56) = static MainActor.shared.getter();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100253064;
  }

  else
  {

    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1002531B8;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_100253064()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 48);

    LOBYTE(v5) = sub_10025AE80(v6, v5);
    sub_1000D9134(v2, v3);
    v4 = v5 ^ 1;
    v2 = *(v1 + 16);
    LOBYTE(v3) = *(v1 + 24);
  }

  *(v0 + 72) = v4 & 1;
  *(v1 + 16) = *(v0 + 48);
  *(v1 + 24) = 0;

  sub_1000D9134(v2, v3);

  return _swift_task_switch(sub_100253154, 0, 0);
}

uint64_t sub_100253154()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002531B8()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 != 255;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  sub_1000D9134(v2, v3);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100253240(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for Playlist.Entry.Reaction();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101186E88);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101186E90);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_101186E98);
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = type metadata accessor for Playlist.Entry();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[32] = v9;
  v3[33] = *(v9 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v3[37] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101186EA8);
  v3[38] = v10;
  v3[39] = *(v10 - 8);
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002535C4, 0, 0);
}

uint64_t sub_1002535C4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 104);
  sub_10025C6DC(&qword_101186EB0, &type metadata accessor for Playlist.Entry);
  sub_10025C6DC(&qword_101186EB8, &type metadata accessor for Playlist.Entry.Reaction);
  MusicLibrarySectionedRequest.init()();
  swift_getKeyPath();
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10025C6DC(&qword_101186EC0, &type metadata accessor for Playlist);
  MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)();

  sub_1000095E8(v1, &unk_1011814D0);
  swift_getKeyPath();
  sub_10010FC20(&qword_10118C2B0);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  v5 = dispatch thunk of Collection.count.getter();
  if (v5)
  {
    v6 = v5;
    sub_10066C9A0(0, v5 & ~(v5 >> 63), 0);
    v7 = dispatch thunk of Collection.startIndex.getter();
    if (v6 < 0)
    {
      __break(1u);
      return MusicLibrarySectionedRequest.response()(v7, v8);
    }

    v9 = *(v0 + 232);
    v34 = (v9 + 16);
    v33 = (v9 + 8);
    do
    {
      v10 = *(v0 + 248);
      v11 = *(v0 + 224);
      v12 = dispatch thunk of Collection.subscript.read();
      (*v34)(v10);
      v12(v0 + 16, 0);
      v13 = Playlist.Entry.id.getter();
      v15 = v14;
      (*v33)(v10, v11);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10066C9A0((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      dispatch thunk of Collection.formIndex(after:)();
      --v6;
    }

    while (v6);
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);
  MusicLibrarySectionedRequest.filterSections<A>(matching:memberOf:)();

  swift_getKeyPath();
  MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

  v22 = Logger.collaboration.unsafeMutableAddressor();
  *(v0 + 328) = v22;
  v23 = *(v21 + 16);
  *(v0 + 336) = v23;
  *(v0 + 344) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v19, v22, v20);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "[Reaction] Will process entry reactions", v26, 2u);
  }

  v27 = *(v0 + 288);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);

  v30 = *(v29 + 8);
  *(v0 + 352) = v30;
  v30(v27, v28);
  *(v0 + 360) = CFAbsoluteTimeGetCurrent();
  v31 = swift_task_alloc();
  *(v0 + 368) = v31;
  *v31 = v0;
  v31[1] = sub_100253AF8;
  v8 = *(v0 + 304);
  v7 = *(v0 + 216);

  return MusicLibrarySectionedRequest.response()(v7, v8);
}

uint64_t sub_100253AF8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1002544E4;
  }

  else
  {
    v2 = sub_100253C0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100253C0C()
{
  v1 = sub_10010C780(_swiftEmptyArrayStorage);
  v2 = MusicLibrarySectionedResponse.sections.getter();
  v5 = v2;
  v66 = *(v2 + 16);
  if (v66)
  {
    v6 = 0;
    v7 = *(v0 + 176);
    v8 = *(v0 + 128);
    v64 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v63 = (*(v0 + 232) + 8);
    v65 = v7;
    v61 = (v7 + 8);
    v62 = (*(v0 + 152) + 8);
    v60 = v2;
    do
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return _swift_task_switch(v2, v3, v4);
      }

      v69 = v1;
      v10 = *(v0 + 240);
      v11 = *(v0 + 224);
      v67 = v6;
      (*(v65 + 16))(*(v0 + 184), v64 + *(v65 + 72) * v6, *(v0 + 168));
      MusicLibrarySection.item.getter();
      v70 = Playlist.Entry.id.getter();
      v68 = v12;
      (*v63)(v10, v11);
      MusicLibrarySection.items.getter();
      sub_100020674(&unk_101186EE0, &qword_101186E88);
      v13 = dispatch thunk of Collection.count.getter();
      if (v13)
      {
        v14 = v13;
        sub_10066C9C0(0, v13 & ~(v13 >> 63), 0);
        v2 = dispatch thunk of Collection.startIndex.getter();
        if (v14 < 0)
        {
          goto LABEL_34;
        }

        do
        {
          v15 = *(v0 + 136);
          v16 = dispatch thunk of Collection.subscript.read();
          (*(v8 + 16))(v15);
          v16(v0 + 48, 0);
          v18 = _swiftEmptyArrayStorage[2];
          v17 = _swiftEmptyArrayStorage[3];
          if (v18 >= v17 >> 1)
          {
            sub_10066C9C0(v17 > 1, v18 + 1, 1);
          }

          v19 = *(v0 + 136);
          v20 = *(v0 + 120);
          _swiftEmptyArrayStorage[2] = v18 + 1;
          (*(v8 + 32))(_swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v19, v20);
          dispatch thunk of Collection.formIndex(after:)();
          --v14;
        }

        while (v14);
        (*v62)(*(v0 + 160), *(v0 + 144));
        v5 = v60;
      }

      else
      {
        (*v62)(*(v0 + 160), *(v0 + 144));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v70;
      v2 = sub_100019C10(v70, v68);
      v23 = v69[2];
      v24 = (v3 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_33;
      }

      v27 = v3;
      if (v69[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v2;
          sub_1006C841C();
          v2 = v34;
          v22 = v70;
        }
      }

      else
      {
        sub_1006C0AA0(v26, isUniquelyReferenced_nonNull_native);
        v2 = sub_100019C10(v70, v68);
        if ((v27 & 1) != (v28 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v29 = *(v0 + 184);
      v30 = *(v0 + 168);
      if (v27)
      {
        v9 = v2;

        v1 = v69;
        *(v69[7] + 8 * v9) = _swiftEmptyArrayStorage;

        v2 = (*v61)(v29, v30);
      }

      else
      {
        v1 = v69;
        v69[(v2 >> 6) + 8] |= 1 << v2;
        v31 = (v69[6] + 16 * v2);
        *v31 = v22;
        v31[1] = v68;
        *(v69[7] + 8 * v2) = _swiftEmptyArrayStorage;
        v2 = (*v61)(v29, v30);
        v32 = v69[2];
        v25 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v25)
        {
          goto LABEL_35;
        }

        v69[2] = v33;
      }

      v6 = v67 + 1;
    }

    while (v67 + 1 != v66);
  }

  *(v0 + 384) = v1;
  v35 = *(v0 + 336);
  v36 = *(v0 + 328);
  v37 = *(v0 + 280);
  v38 = *(v0 + 256);
  v40 = *(v0 + 208);
  v39 = *(v0 + 216);
  v41 = *(v0 + 192);
  v42 = *(v0 + 200);
  Current = CFAbsoluteTimeGetCurrent();
  v35(v37, v36, v38);
  (*(v42 + 16))(v40, v39, v41);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 360);
    v48 = *(v0 + 200);
    v47 = *(v0 + 208);
    v49 = *(v0 + 192);
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    v51 = MusicLibrarySectionedResponse.totalItemCount.getter();
    v52 = *(v48 + 8);
    v52(v47, v49);
    *(v50 + 4) = v51;
    *(v50 + 12) = 2048;
    *(v50 + 14) = Current - v46;
    _os_log_impl(&_mh_execute_header, v44, v45, "[Reaction] Mapped %ld reactions in %f seconds", v50, 0x16u);
  }

  else
  {
    v52 = *(*(v0 + 200) + 8);
    v52(*(v0 + 208), *(v0 + 192));
  }

  *(v0 + 392) = v52;
  v53 = *(v0 + 352);
  v54 = *(v0 + 280);
  v55 = *(v0 + 256);

  v53(v54, v55);
  type metadata accessor for MainActor();
  *(v0 + 400) = static MainActor.shared.getter();
  v56 = dispatch thunk of Actor.unownedExecutor.getter();
  v58 = v57;
  v2 = sub_1002542AC;
  v3 = v56;
  v4 = v58;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1002542AC()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3 == 255 || (v3 & 1) == 0)
  {
    v7 = 1;
  }

  else
  {
    v4 = *(v0 + 384);

    sub_10025AFDC(v5, v4);
    LOBYTE(v4) = v6;
    sub_1000D9134(v2, v3);
    v7 = v4 ^ 1;
    v2 = *(v1 + 16);
    LOBYTE(v3) = *(v1 + 24);
  }

  *(v0 + 416) = v7 & 1;
  *(v1 + 16) = *(v0 + 384);
  *(v1 + 24) = 1;

  sub_1000D9134(v2, v3);

  return _swift_task_switch(sub_10025439C, 0, 0);
}

uint64_t sub_10025439C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v0 + 392))(*(v0 + 216), *(v0 + 192));
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_1002544E4()
{
  (*(v0 + 336))(*(v0 + 272), *(v0 + 328), *(v0 + 256));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Reaction] Failed to map reactions with error=%@", v3, 0xCu);
    sub_1000095E8(v4, &unk_101183D70);
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 272);
  v8 = *(v0 + 256);

  v6(v7, v8);
  type metadata accessor for MainActor();
  *(v0 + 408) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002546A0, v10, v9);
}

uint64_t sub_1002546A0()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 417) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  sub_1000D9134(v2, v3);

  return _swift_task_switch(sub_100254728, 0, 0);
}

uint64_t sub_100254728()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 417) != 255;

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_10025485C()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101186DE8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  v8 = *(v0 + 48);
  dispatch thunk of ReactionPickerView.dismiss()();

  v9 = *(v1 + 32);
  *(v1 + 32) = 0;

  v10 = _s7ContextVMa(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v5, &unk_101186DE8);
  swift_beginAccess();
  sub_10025C724(v7, v1 + v11);
  swift_endAccess();
  sub_1002554FC(v5);
  sub_1000095E8(v5, &unk_101186DE8);
  return sub_1000095E8(v7, &unk_101186DE8);
}

void sub_100254A40(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101186DE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_10010FC20(&qword_101186BB8);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 window];
  if (v18)
  {
    v40 = v10;
    v41 = v18;
    v19 = Logger.collaboration.unsafeMutableAddressor();
    (*(v14 + 16))(v17, v19, v13);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v38 = v9;
      v24 = v23;
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v24 = 136315138;
      v39 = v6;
      v25 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
      swift_beginAccess();
      sub_1000089F8(v20 + v25, v12, &qword_101186BB8);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000105AC(v26, v27, v42);
      v6 = v39;

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "[Reaction] Will present picker for source=%s", v24, 0xCu);
      sub_10000959C(v37);

      v9 = v38;
    }

    (*(v14 + 8))(v17, v13);
    v29 = *(v2 + 32);
    *(v2 + 32) = v20;
    v30 = v20;

    v31 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
    swift_beginAccess();
    sub_10025C4D8(v30 + v31, v9, _s7ContextVMa);
    v32 = _s7ContextVMa(0);
    (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
    v33 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
    swift_beginAccess();
    sub_1000089F8(v2 + v33, v6, &unk_101186DE8);
    swift_beginAccess();
    sub_10025C724(v9, v2 + v33);
    swift_endAccess();
    sub_1002554FC(v6);
    sub_1000095E8(v6, &unk_101186DE8);
    sub_1000095E8(v9, &unk_101186DE8);
    v34 = *(v2 + 48);
    v35 = v41;
    dispatch thunk of ReactionPickerView.present(from:in:animated:)();
  }
}

uint64_t sub_100254E94(uint64_t a1)
{
  v49 = a1;
  v1 = _s7ContextV6SourceOMa(0);
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_101186BB8);
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - v4;
  v5 = sub_10010FC20(&qword_101186D58);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = sub_10010FC20(&unk_101186DE8);
  __chkstk_darwin(v8 - 8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v41 - v11;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = _s7ContextVMa(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  sub_1000089F8(v49, v14, &unk_101186DE8);
  v49 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000095E8(v14, &unk_101186DE8);
  }

  sub_10025C794(v14, v24, _s7ContextVMa);
  v26 = v48;
  v27 = *(v48 + 32);
  if (v27)
  {
    v28 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
    swift_beginAccess();
    sub_10025C4D8(v27 + v28, v18, _s7ContextVMa);
    sub_10025C794(v18, v21, _s7ContextVMa);
    v29 = *(v5 + 48);
    sub_1000089F8(v24, v7, &qword_101186BB8);
    sub_1000089F8(v21, &v7[v29], &qword_101186BB8);
    v30 = v47;
    v31 = *(v46 + 48);
    if (v31(v7, 1, v47) == 1)
    {
      if (v31(&v7[v29], 1, v30) == 1)
      {
        sub_1000095E8(v7, &qword_101186BB8);
LABEL_12:
        v38 = v43;
        sub_10025C4D8(v24, v43, _s7ContextVMa);
        (*(v49 + 56))(v38, 0, 1, v15);
        v39 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
        swift_beginAccess();
        v40 = v44;
        sub_1000089F8(v26 + v39, v44, &unk_101186DE8);
        swift_beginAccess();
        sub_10025C724(v38, v26 + v39);
        swift_endAccess();
        sub_1002554FC(v40);
        sub_1000095E8(v40, &unk_101186DE8);
        v35 = v38;
        v34 = &unk_101186DE8;
        goto LABEL_13;
      }
    }

    else
    {
      v33 = v45;
      sub_1000089F8(v7, v45, &qword_101186BB8);
      if (v31(&v7[v29], 1, v30) != 1)
      {
        v36 = v42;
        sub_10025C794(&v7[v29], v42, _s7ContextV6SourceOMa);
        v37 = sub_10025B9A8(v33, v36);
        sub_10025C540(v36, _s7ContextV6SourceOMa);
        sub_10025C540(v33, _s7ContextV6SourceOMa);
        sub_1000095E8(v7, &qword_101186BB8);
        if ((v37 & 1) == 0)
        {
LABEL_14:
          sub_10025C540(v21, _s7ContextVMa);
          v32 = v24;
          return sub_10025C540(v32, _s7ContextVMa);
        }

        goto LABEL_12;
      }

      sub_10025C540(v33, _s7ContextV6SourceOMa);
    }

    v34 = &qword_101186D58;
    v35 = v7;
LABEL_13:
    sub_1000095E8(v35, v34);
    goto LABEL_14;
  }

  v32 = v24;
  return sub_10025C540(v32, _s7ContextVMa);
}

void sub_1002554FC(uint64_t a1)
{
  v2 = v1;
  v4 = _s7ContextVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101186DE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_10010FC20(&qword_101186DF8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1000089F8(a1, v13, &unk_101186DE8);
  sub_1000089F8(v2 + v14, &v13[v15], &unk_101186DE8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000095E8(v13, &unk_101186DE8);
      return;
    }
  }

  else
  {
    sub_1000089F8(v13, v9, &unk_101186DE8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = &v13[v15];
      v20 = v29;
      sub_10025C794(v19, v29, _s7ContextVMa);
      v21 = sub_10025BFB8(v9, v20);
      sub_10025C540(v20, _s7ContextVMa);
      sub_10025C540(v9, _s7ContextVMa);
      sub_1000095E8(v13, &unk_101186DE8);
      if (v21)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10025C540(v9, _s7ContextVMa);
  }

  sub_1000095E8(v13, &qword_101186DF8);
LABEL_7:
  if (v16((v2 + v14), 1, v4))
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v22 = v29;
    sub_10025C4D8(v2 + v14, v29, _s7ContextVMa);
    v17 = sub_10025593C();
    v18 = v23;
    sub_10025C540(v22, _s7ContextVMa);
  }

  *(v2 + 56) = v17;
  *(v2 + 64) = v18;

  v24 = *(v2 + 48);
  dispatch thunk of ReactionPickerView.selectedReaction.setter();

  v25 = *(v2 + 48);
  if (v16((v2 + v14), 1, v4))
  {
    v26 = v25;
  }

  else
  {
    v27 = v29;
    sub_10025C4D8(v2 + v14, v29, _s7ContextVMa);
    v28 = v25;
    sub_100255ED4();
    sub_10025C540(v27, _s7ContextVMa);
  }

  dispatch thunk of ReactionPickerView.history.setter();
}

id sub_10025593C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for Playlist.Entry.Reaction();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  if (qword_10117F610 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    result = Collaboration.Manager.participantProfile.getter();
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = [result socialProfileID];

    if (!v14)
    {
      return 0;
    }

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v1 + *(_s7ContextVMa(0) + 20);
    v18 = *(v17 + 8);
    if (v18 == 255)
    {
      goto LABEL_45;
    }

    v45 = v16;
    v1 = *v17;
    if (v18)
    {
      break;
    }

    v46 = *(v1 + 16);
    if (!v46)
    {
      goto LABEL_45;
    }

    v26 = 0;
    v43 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v42 = v6 + 16;
    v27 = (v6 + 8);
    v40 = v11;
    v41 = (v6 + 8);
    while (v26 < *(v1 + 16))
    {
      v11 = v1;
      (*(v6 + 16))(v9, v43 + *(v6 + 72) * v26, v5);
      Playlist.Entry.Reaction.socialProfile.getter();
      v28 = type metadata accessor for SocialProfile();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v4, 1, v28) == 1)
      {
        sub_1000095E8(v4, &qword_101186E00);
      }

      else
      {
        v30 = v6;
        v31 = SocialProfile.id.getter();
        v33 = v32;
        (*(v29 + 8))(v4, v28);
        if (v31 == v44 && v33 == v45)
        {

          v6 = v30;
LABEL_36:

          v35 = v40;
          (*(v6 + 32))(v40, v9, v5);
          v36 = Playlist.Entry.Reaction.value.getter();
          (*(v6 + 8))(v35, v5);
          return v36;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v30;
        v27 = v41;
        if (v34)
        {
          goto LABEL_36;
        }
      }

      ++v26;
      (*v27)(v9, v5);
      v1 = v11;
      if (v46 == v26)
      {
        goto LABEL_45;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v11 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
    if (v46)
    {
      goto LABEL_8;
    }

LABEL_45:

    return 0;
  }

  v46 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
    goto LABEL_45;
  }

LABEL_8:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v19 = sub_1007E9098(v5, v1);
    }

    else
    {
      if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v19 = *(v1 + 8 * v5 + 32);
    }

    v20 = v19;
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v22 = [v19 socialProfile];
    if (!v22)
    {
      goto LABEL_9;
    }

    v23 = v22;
    v9 = [v22 identifiers];

    v4 = [v9 universalStore];
    if (!v4)
    {
      goto LABEL_9;
    }

    v9 = [v4 socialProfileID];
    swift_unknownObjectRelease();
    if (!v9)
    {
      goto LABEL_9;
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v24;

    if (v43 == v44 && v4 == v45)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_38;
    }

LABEL_9:

    ++v5;
    if (v21 == v46)
    {
      goto LABEL_45;
    }
  }

LABEL_38:

  v37 = [v20 reactionText];

  if (!v37)
  {
    return 0;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v38;
}

void *sub_100255ED4()
{
  v1 = type metadata accessor for ReactionHistoryEntry();
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  v3 = __chkstk_darwin(v1);
  v49 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v44 - v5;
  v7 = type metadata accessor for Playlist.Entry.Reaction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(_s7ContextVMa(0) + 20);
  v12 = *(v11 + 8);
  if (v12 == 255)
  {
    return &_swiftEmptyArrayStorage;
  }

  v13 = *v11;
  if (v12)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = 0;
      v48 = (v13 & 0xC000000000000001);
      v44[1] = v53;
      v44[2] = v51 + 32;
      v17 = &_swiftEmptyArrayStorage;
      v18 = &selRef_setPhotosHeaderMetadata_;
      v46 = v14;
      v47 = v13;
      v45 = i;
      while (1)
      {
        if (v48)
        {
          v19 = sub_1007E9098(v16, v13);
        }

        else
        {
          if (v16 >= *(v14 + 16))
          {
            goto LABEL_33;
          }

          v19 = *(v13 + 8 * v16 + 32);
        }

        v20 = v19;
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v22 = [objc_allocWithZone(NSItemProvider) init];
        v23 = [v20 v18[72]];
        if (v23)
        {
          v24 = v23;
          sub_100009F78(0, &qword_101183B40);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v26 = swift_allocObject();
          *(v26 + 16) = v24;
          v53[2] = sub_10025C7FC;
          v53[3] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v53[0] = sub_100440BE8;
          v53[1] = &unk_1010A23F0;
          v27 = _Block_copy(aBlock);
          v28 = v24;

          [v22 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v27];
          _Block_release(v27);
        }

        v29 = [v20 v18[72]];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 name];

          if (v31)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        v32 = [v20 reactionText];
        if (v32)
        {
          v33 = v32;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        ReactionHistoryEntry.init(displayName:reaction:avatarImageProvider:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100498FA4(0, v17[2] + 1, 1, v17);
        }

        v34 = v45;
        v14 = v46;
        v18 = &selRef_setPhotosHeaderMetadata_;
        v36 = v17[2];
        v35 = v17[3];
        if (v36 >= v35 >> 1)
        {
          v17 = sub_100498FA4(v35 > 1, v36 + 1, 1, v17);
        }

        v17[2] = v36 + 1;
        (*(v51 + 32))(v17 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36, v49, v50);
        ++v16;
        v13 = v47;
        if (v21 == v34)
        {
          return v17;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    return &_swiftEmptyArrayStorage;
  }

  v37 = *(v13 + 16);
  if (!v37)
  {
    return &_swiftEmptyArrayStorage;
  }

  v39 = *(v8 + 16);
  v38 = (v8 + 16);
  v40 = v13 + ((v38[64] + 32) & ~v38[64]);
  v47 = *(v38 + 7);
  v48 = v39;
  v49 = v38;
  v17 = &_swiftEmptyArrayStorage;
  do
  {
    v48(v10, v40, v7);
    sub_10025771C(v6);
    (*(v38 - 1))(v10, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100498FA4(0, v17[2] + 1, 1, v17);
    }

    v42 = v17[2];
    v41 = v17[3];
    if (v42 >= v41 >> 1)
    {
      v17 = sub_100498FA4(v41 > 1, v42 + 1, 1, v17);
    }

    v17[2] = v42 + 1;
    (*(v51 + 32))(v17 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, v6, v50);
    v40 += v47;
    --v37;
  }

  while (v37);
  return v17;
}

uint64_t sub_1002564B8()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v0[11] = v2;
  sub_100009F78(0, qword_101186D10);
  v3 = v2;
  v4 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  [v3 setSectionKind:v4];

  sub_100009F78(0, &qword_101186EF8);
  v5 = [swift_getObjCClassFromMetadata() identityKind];
  [v3 setItemKind:v5];

  if (v1 >> 62)
  {
    sub_100009F78(0, &unk_101186F00);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F78(0, &unk_101186F00);
  }

  sub_100009F78(0, &unk_101186F00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setScopedContainers:isa];

  sub_10010FC20(&unk_101181640);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBDC20;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 56) = v9;
  sub_10010FC20(&qword_101186F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBDC20;
  *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v13;
  *(v12 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 56) = v14;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = [objc_opt_self() propertySetWithProperties:v15];

  *(inited + 48) = v16;
  sub_10000BFA0(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_101186F18);
  v17 = objc_allocWithZone(MPPropertySet);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_101186F20);
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithProperties:v18 relationships:v19];

  [v3 setItemProperties:v20];
  sub_10010FC20(&qword_101183990);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6C0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = objc_allocWithZone(NSSortDescriptor);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 initWithKey:v23 ascending:0];

  *(v21 + 32) = v24;
  sub_100009F78(0, &qword_101186F28);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setItemSortDescriptors:v25];

  v26 = swift_task_alloc();
  v0[12] = v26;
  *(v26 + 16) = v3;
  v27 = swift_task_alloc();
  v0[13] = v27;
  v28 = sub_10010FC20(&qword_101186F30);
  *v27 = v0;
  v27[1] = sub_100256A3C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 9, 0, 0, 0xD000000000000018, 0x8000000100E42340, sub_10025D214, v26, v28);
}

uint64_t sub_100256A3C()
{

  return _swift_task_switch(sub_100256B54, 0, 0);
}

uint64_t sub_100256B54()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100256BB8(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = a2;
  v9 = [a5 itemsInSectionAtIndex:a1];
  sub_100009F78(0, &qword_101186EF0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  *a4 = 0x8000000000000000;
  sub_1006C5B1C(v10, v8, isUniquelyReferenced_nonNull_native);

  *a4 = v12;
}

uint64_t sub_100256C7C()
{
  sub_1000D9134(*(v0 + 16), *(v0 + 24));

  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions10Controller_currentEntryContext, &unk_101186DE8);

  return swift_deallocClassInstance();
}

void sub_100256D44()
{
  sub_1002591D8(319, &unk_1011869E8, _s7ContextVMa);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100256E40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473696C79616C70;
  }

  else
  {
    v3 = 0x6979616C50776F6ELL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v4 = 0xEE006C6961746544;
  }

  if (*a2)
  {
    v5 = 0x7473696C79616C70;
  }

  else
  {
    v5 = 0x6979616C50776F6ELL;
  }

  if (*a2)
  {
    v6 = 0xEE006C6961746544;
  }

  else
  {
    v6 = 0xEA0000000000676ELL;
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

Swift::Int sub_100256EF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100256F8C()
{
  String.hash(into:)();
}

Swift::Int sub_10025700C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10025709C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101099C98, *a1);

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

void sub_1002570FC(uint64_t *a1@<X8>)
{
  v2 = 0x6979616C50776F6ELL;
  if (*v1)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0xEA0000000000676ELL;
  if (*v1)
  {
    v3 = 0xEE006C6961746544;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100257178(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (a1[1])
  {
    if (v10)
    {
      return a6(v8, v9);
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

  return a5(v8, v9);
}

uint64_t sub_1002571B4()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7ContextV6SourceOMa(0);
  __chkstk_darwin(v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10025C4D8(v1, v8, _s7ContextV6SourceOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;

    v10 = [v9 innermostModelObject];
    v11 = MPModelObject.bestIdentifier(for:)(0, 2u);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = Playlist.Entry.catalogID.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v15 = *(sub_10010FC20(&qword_101183AD8) + 48);
    v16 = type metadata accessor for Playlist();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
  }

  return v11;
}

uint64_t sub_1002573C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002573EC, 0, 0);
}

uint64_t sub_1002573EC()
{
  if (v0[3])
  {
    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_allocWithZone(MPModelLibraryPlaylistEntryReactionChangeRequest) initWithPlaylist:v0[4] playlistEntry:v0[5] reactionText:v1];
  v0[6] = v2;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_10025752C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10025752C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1002576AC;
  }

  else
  {

    v2 = sub_100257648;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100257648()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002576AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025771C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101186E00);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SocialProfile();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v26 = [objc_allocWithZone(NSItemProvider) init];
  v28 = v1;
  Playlist.Entry.Reaction.socialProfile.getter();
  v27 = *(v10 + 48);
  if (v27(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &qword_101186E00);
  }

  else
  {
    v25 = a1;
    v16 = *(v10 + 32);
    v16(v15, v8, v9);
    sub_100009F78(0, &qword_101183B40);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    (*(v10 + 16))(v13, v15, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    v16((v18 + v17), v13, v9);
    aBlock[4] = sub_10025C804;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100440BE8;
    aBlock[3] = &unk_1010A2440;
    v19 = _Block_copy(aBlock);

    [v26 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v19];
    _Block_release(v19);
    (*(v10 + 8))(v15, v9);
  }

  Playlist.Entry.Reaction.socialProfile.getter();
  if (v27(v6, 1, v9) == 1)
  {
    sub_1000095E8(v6, &qword_101186E00);
LABEL_7:

    goto LABEL_8;
  }

  SocialProfile.name.getter();
  v21 = v20;
  (*(v10 + 8))(v6, v9);
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_8:
  Playlist.Entry.Reaction.value.getter();
  return ReactionHistoryEntry.init(displayName:reaction:avatarImageProvider:)();
}

uint64_t sub_100257AE4()
{
  v1 = type metadata accessor for Playlist.Entry.Reaction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(_s7ContextVMa(0) + 20);
  v6 = *(v5 + 8);
  if (v6 == 255)
  {
    return 0;
  }

  v7 = *v5;
  if ((v6 & 1) == 0)
  {
    if (*(v7 + 16))
    {
      (*(v2 + 16))(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
      v13 = Playlist.Entry.Reaction.value.getter();
      (*(v2 + 8))(v4, v1);
      return v13;
    }

    return 0;
  }

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
LABEL_5:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = sub_1007E9098(0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v9 = *(v7 + 32);
    }

    v10 = v9;
    v11 = [v9 reactionText];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v12;
    }

    return 0;
  }

  return result;
}

char *sub_100257CBC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = _s7ContextVMa(0);
  v49 = *(v4 - 1);
  __chkstk_darwin(v4);
  v50 = v5;
  v51 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v48[3] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v48[2] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101186F40);
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = v48 - v14;
  v48[0] = type metadata accessor for Reactions.StackView(0);
  __chkstk_darwin(v48[0]);
  v55 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100257AE4();
  v18 = v17;
  v19 = a1 + v4[5];
  v20 = *(v19 + 8);
  if (v20 == 255)
  {
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    if (v20)
    {
      if (v21 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v22 = *(v21 + 16);
    }
  }

  v23 = *(a1 + v4[6]);
  v24 = *(a1 + v4[7]);
  type metadata accessor for Reactions.StackView.Model(0);
  swift_allocObject();
  v25 = v23;
  v26 = Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(v16, v18, v22, v23, v24);
  if (*(a1 + v4[8]))
  {
    v27 = 28.0;
    v28 = 5.0;
    v29 = 14.0;
    v30 = 0;
  }

  else
  {
    v27 = 32.0;
    v28 = 5.0;
    v29 = 14.0;
    v30 = 1;
  }

  Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)(3, v30, &v58, v27, v28, v29);
  v62 = v58;
  v63 = v59;
  v64 = v60;
  v65 = v61;

  v31 = v55;
  Reactions.StackView.init(model:specs:)(&v62, v55);
  v48[1] = v26;
  __chkstk_darwin(v32);
  sub_10025C6DC(&qword_101186F48, type metadata accessor for Reactions.StackView);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v33 = v53;
  UIHostingConfiguration.margins(_:_:)();
  v52 = *(v52 + 8);
  (v52)(v12, v33);
  sub_10025C4D8(v31, &v2[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_reactionsStackView], type metadata accessor for Reactions.StackView);
  *&v2[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_contentView] = UIHostingConfiguration.makeContentView()();
  sub_10025C4D8(a1, &v2[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context], _s7ContextVMa);
  *&v2[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_controller] = v54;
  v34 = _s7ControlCMa(0);
  v57.receiver = v2;
  v57.super_class = v34;

  v35 = objc_msgSendSuper2(&v57, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v36 = String._bridgeToObjectiveC()();

  [v35 setAccessibilityLabel:v36];

  v37 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_contentView;
  [*&v35[OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_contentView] setUserInteractionEnabled:0];
  v38 = *&v35[v37];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  [v40 setBackgroundColor:v41];

  [*&v35[v37] setAutoresizingMask:18];
  [v35 addSubview:*&v35[v37]];
  sub_100009F78(0, &qword_1011839A0);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v51;
  sub_10025C4D8(a1, v51, _s7ContextVMa);
  v44 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  sub_10025C794(v43, v45 + v44, _s7ContextVMa);
  v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v35 addAction:v46 forControlEvents:64];

  (v52)(v56, v33);
  sub_10025C540(a1, _s7ContextVMa);
  sub_10025C540(v55, type metadata accessor for Reactions.StackView);
  return v35;
}

uint64_t sub_100258480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_101186BB8);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v20 = result;

  sub_100254A40(v20);

  v21 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
  swift_beginAccess();
  sub_1000089F8(v20 + v21, v18, &qword_101186BB8);
  v22 = _s7ContextV6SourceOMa(0);
  v23 = (*(*(v22 - 8) + 48))(v18, 1, v22);
  v44 = v6;
  v45 = v15;
  if (v23 == 1)
  {
    sub_1000095E8(v18, &qword_101186BB8);
LABEL_5:

    v24 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_6;
  }

  v24 = sub_1002571B4();
  v26 = v25;
  sub_10025C540(v18, _s7ContextV6SourceOMa);
  if (!v26)
  {
    goto LABEL_5;
  }

LABEL_6:
  v27 = type metadata accessor for URL();
  v28 = *(*(v27 - 8) + 56);
  v28(v12, 1, 1, v27);
  v29 = _s7ContextVMa(0);
  v30 = *(a3 + *(v29 + 32)) == 0;
  if (*(a3 + *(v29 + 32)))
  {
    v31 = 0x7473696C79616C70;
  }

  else
  {
    v31 = 0x6979616C50776F6ELL;
  }

  if (v30)
  {
    v32 = 0xEA0000000000676ELL;
  }

  else
  {
    v32 = 0xEE006C6961746544;
  }

  v28(v9, 1, 1, v27);

  v33 = v44;
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v24, v26, v31, v32, v9, 0, 0, 0, v44);
  v34 = v45;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v24, v26, 5, 35, v12, 0, 0, 12, v45, 0, 0, 0xFF00u, v33, 0);
  v35 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v36 = sub_10053771C();
  v38 = v37;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v39 = qword_101218AD0;
  v40 = GroupActivitiesManager.hasJoined.getter();
  v41 = GroupActivitiesManager.participantsCount.getter();
  v42 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v35) + 0xB8))(v34, v36, v38, v40 & 1, v41, *(v39 + v42));

  return sub_10025C540(v34, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_100258AD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101186DE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = _s7ContextVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = v2 + OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
  swift_beginAccess();
  sub_10025C4D8(v14, v13, _s7ContextVMa);
  LOBYTE(a1) = sub_10025BFB8(a1, v13);
  result = sub_10025C540(v13, _s7ContextVMa);
  if ((a1 & 1) == 0)
  {
    v33 = v6;
    v34 = v8;
    v16 = v7;
    v17 = Reactions.StackView.model.getter();
    sub_10025C4D8(v14, v13, _s7ContextVMa);
    v18 = sub_100257AE4();
    v20 = v19;
    sub_10025C540(v13, _s7ContextVMa);
    (*(*v17 + 136))(v18, v20);
    v21 = v16;

    v22 = Reactions.StackView.model.getter();
    sub_10025C4D8(v14, v10, _s7ContextVMa);
    v23 = &v10[*(v16 + 20)];
    v24 = v23[8];
    if (v24 == 255)
    {
      v27 = 0;
      v26 = v33;
    }

    else
    {
      v25 = *v23;
      v26 = v33;
      if (v24)
      {
        if (v25 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v27 = *(v25 + 16);
      }
    }

    sub_10025C540(v10, _s7ContextVMa);
    (*(*v22 + 184))(v27);

    v28 = Reactions.StackView.model.getter();
    v29 = *(v14 + *(v21 + 24));
    v30 = *(*v28 + 232);
    v31 = v29;
    v30(v29);

    [v2 invalidateIntrinsicContentSize];
    sub_10025C4D8(v14, v26, _s7ContextVMa);
    (*(v34 + 56))(v26, 0, 1, v21);

    sub_100254E94(v26);

    return sub_1000095E8(v26, &unk_101186DE8);
  }

  return result;
}

id sub_100258EE8()
{
  v2.receiver = v0;
  v2.super_class = _s7ControlCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100258FDC()
{
  result = _s7ContextVMa(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Reactions.StackView(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100259108()
{
  sub_1002591D8(319, &qword_101186C28, _s7ContextV6SourceOMa);
  if (v0 <= 0x3F)
  {
    sub_10025924C();
    if (v1 <= 0x3F)
    {
      sub_10025929C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002591D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10025924C()
{
  if (!qword_101186C30)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101186C30);
    }
  }
}

void sub_10025929C()
{
  if (!qword_101186C38[0])
  {
    sub_100009F78(255, &qword_101183B40);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_101186C38);
    }
  }
}

uint64_t _s15AnimationStatusOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s15AnimationStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1002593B0()
{
  sub_100259424();
  if (v0 <= 0x3F)
  {
    sub_100259498();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100259424()
{
  if (!qword_101186D00)
  {
    type metadata accessor for Playlist.Entry();
    type metadata accessor for Playlist();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101186D00);
    }
  }
}

void sub_100259498()
{
  if (!qword_101186D08)
  {
    sub_100009F78(255, qword_101186D10);
    sub_100009F78(255, &unk_10118A270);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101186D08);
    }
  }
}

unint64_t sub_100259530()
{
  result = qword_101186D48;
  if (!qword_101186D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186D48);
  }

  return result;
}

char *sub_100259584(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10025C4D8(v2 + *(a2 + 20), v6, _s7ContextVMa);
  v7 = *v2;
  v8 = objc_allocWithZone(_s7ControlCMa(0));

  return sub_100257CBC(v6, v7);
}

uint64_t sub_100259640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7ContextVMa(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v14[-v10];
  sub_10025C4D8(v3 + *(a3 + 20), &v14[-v10], _s7ContextVMa);
  v12 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
  swift_beginAccess();
  sub_10025C4D8(a1 + v12, v8, _s7ContextVMa);
  swift_beginAccess();
  sub_1001D2610(v11, a1 + v12);
  swift_endAccess();
  sub_100258AD8(v8);
  sub_10025C540(v8, _s7ContextVMa);
  return sub_10025C540(v11, _s7ContextVMa);
}

uint64_t sub_100259794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10025C6DC(&qword_101186FE8, _s6ButtonVMa);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100259828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10025C6DC(&qword_101186FE8, _s6ButtonVMa);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002598BC()
{
  sub_10025C6DC(&qword_101186FE8, _s6ButtonVMa);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100259914()
{
  v1[2] = v0;
  sub_10010FC20(&unk_101195200);
  v1[3] = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  v1[4] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100259A38, 0, 0);
}

uint64_t sub_100259A38()
{
  v1 = v0[6];
  SocialProfile.artwork.getter();
  v2 = type metadata accessor for Artwork();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v0[9] = v3;
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[6];
  v7 = v0[7];
  if (v5 == 1)
  {
    v8 = SocialProfile.name.getter();
    static Artwork.monogramArtwork(for:layoutDirection:)(v8, v9, 0, 1, v7);

    if (v4(v6, 1, v2) != 1)
    {
      sub_1000095E8(v0[6], &unk_101188920);
    }
  }

  else
  {
    (*(v3 + 32))(v0[7], v0[6], v2);
    (*(v3 + 56))(v7, 0, 1, v2);
  }

  v10 = v0[5];
  sub_1000089F8(v0[7], v10, &unk_101188920);
  if (v4(v10, 1, v2) == 1)
  {
    v11 = v0[5];
    sub_1000095E8(v0[7], &unk_101188920);
    sub_1000095E8(v11, &unk_101188920);

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    if (qword_10117F3E8 != -1)
    {
      swift_once();
    }

    v15 = v0[3];
    v14 = v0[4];
    v16 = qword_1011869A0;
    v17 = [objc_opt_self() currentTraitCollection];
    [v17 displayScale];
    v19 = v18;

    v20 = type metadata accessor for Artwork.CropStyle();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    v21 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    v22 = swift_task_alloc();
    v0[10] = v22;
    *v22 = v0;
    v22[1] = sub_100259DF8;
    v24 = v0[4];
    v25 = v0[3];
    v26.n128_u64[0] = v16;
    v27.n128_u64[0] = v16;

    v23.n128_f64[0] = 1.0 / v19;
    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v24, v25, 0, 0, v26, v27, v23);
  }
}

uint64_t sub_100259DF8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v7 = v4 + 3;
    v6 = v4[3];
    v5 = v7[1];

    sub_1000095E8(v6, &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v8 = sub_10025D524;
  }

  else
  {
    v9 = v4[8];
    v10 = v4[9];
    v12 = v4[4];
    v11 = v4[5];
    v13 = v4[3];
    v4[11] = a1;
    sub_1000095E8(v13, &unk_101195200);
    sub_1000095E8(v12, &unk_101184060);
    (*(v10 + 8))(v11, v9);
    v8 = sub_10025D504;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100259FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialProfile();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_1001F4CB8(0, 0, v11, &unk_100EC2788, v14);

  return 0;
}

uint64_t sub_10025A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10025A240;

  return sub_100259914();
}

uint64_t sub_10025A240(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10025A340, 0, 0);
}

uint64_t sub_10025A340()
{
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {
    v3 = v1;
    v2(v1, 0);
  }

  else
  {
    v2(0, 0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10025A3E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;

  sub_1001F4CB8(0, 0, v8, &unk_100EC27A0, v10);

  return 0;
}

uint64_t sub_10025A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10025A59C;

  return sub_10025A69C();
}

uint64_t sub_10025A59C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10025D4FC, 0, 0);
}

uint64_t sub_10025A6BC()
{
  v1 = [*(v0 + 40) artworkCatalog];
  if (v1)
  {
LABEL_4:
    *(v0 + 48) = v1;
    v3 = Collaboration.artworkCaching.unsafeMutableAddressor();
    swift_beginAccess();
    v4 = *v3;
    *(v0 + 56) = v4;

    v5 = String._bridgeToObjectiveC()();

    [v1 setCacheIdentifier:v5 forCacheReference:v4];

    [v1 setFittingSize:{42.0, 42.0}];
    [v1 setDestinationScale:0.0];
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_10025A854;

    return MPArtworkCatalog.getImage()();
  }

  v2 = MPModelPerson.monogramArtworkCatalog.getter();
  if (v2)
  {
    v1 = v2;
    goto LABEL_4;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10025A854(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10025A9F0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_10025A980;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10025A980()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10025A9F0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_10025AA5C(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_101186E68);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10025CA84;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D5D0C;
  aBlock[3] = &unk_1010A24E0;
  v11 = _Block_copy(aBlock);

  [a2 performWithResponseHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10025AC0C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10010FC20(&qword_101186E68);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10010FC20(&qword_101186E68);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10025AC80(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_101186F38);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10025D2A0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010A25A8;
  v11 = _Block_copy(aBlock);

  [a2 performWithResponseHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10025AE30(void *a1)
{
  v1 = a1;
  sub_10010FC20(&qword_101186F38);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10025AE80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + 8 * v11);

    sub_1006BE548(v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_10047C90C(v16, v12);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10025AFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Entry.Reaction();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = 0;
    v10 = *(a1 + 64);
    v36 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v10;
    v14 = (v11 + 63) >> 6;
    v44 = (v48 + 8);
    v45 = v48 + 16;
    v37 = v14;
    v38 = a1;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_14:
      v39 = v9;
      v18 = v15 | (v9 << 6);
      v19 = *(a1 + 56);
      v20 = (*(a1 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v19 + 8 * v18);

      v24 = sub_100019C10(v21, v22);
      v26 = v25;

      if ((v26 & 1) == 0 || (v47 = *(*(a2 + 56) + 8 * v24), v27 = *(v47 + 16), v27 != *(v23 + 16)))
      {
LABEL_26:

        return;
      }

      if (v27 && v47 != v23)
      {
        v35 = a2;
        v28 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v42 = v23 + v28;
        v43 = v47 + v28;

        v29 = 0;
        v41 = v23;
        while (v29 < *(v47 + 16))
        {
          v30 = *(v48 + 72) * v29;
          v31 = *(v48 + 16);
          v31(v8, v43 + v30, v4);
          if (v29 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          v32 = v46;
          v31(v46, v42 + v30, v4);
          sub_10025C6DC(&qword_101186D50, &type metadata accessor for Playlist.Entry.Reaction);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v44;
          (*v44)(v32, v4);
          v34(v8, v4);
          if ((v33 & 1) == 0)
          {

            goto LABEL_26;
          }

          ++v29;
          v23 = v41;
          if (v27 == v29)
          {

            a2 = v35;
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v14 = v37;
      a1 = v38;
      v9 = v39;
      v13 = v40;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        return;
      }

      v17 = *(v36 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_10025B374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork();
  v79 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v59 - v8;
  v78 = type metadata accessor for EditorialVideoArtworkFlavor();
  v69 = *(v78 - 8);
  v9 = __chkstk_darwin(v78);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v59 - v11;
  v12 = sub_10010FC20(&qword_101186E70);
  v13 = __chkstk_darwin(v12 - 8);
  result = __chkstk_darwin(v13);
  v72 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v15;
  v66 = v7;
  v67 = a2;
  v17 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v60 = (v21 + 63) >> 6;
  v61 = v19;
  v62 = v69 + 16;
  v76 = (v69 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v63;
    v33 = v68;
    v32 = v69;
    v34 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v24, v78);
    v35 = *(v31 + 56);
    v36 = v79;
    v37 = v77;
    (*(v79 + 16))(v77, v35 + *(v79 + 72) * v24, v4);
    v38 = sub_10010FC20(&qword_101186E78);
    v39 = *(v38 + 48);
    v40 = *(v32 + 32);
    v28 = v71;
    v40(v71, v33, v34);
    (*(v36 + 32))(v28 + v39, v37, v4);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v27 = v72;
    v23 = v73;
LABEL_17:
    sub_10025CB00(v28, v27);
    v41 = sub_10010FC20(&qword_101186E78);
    v42 = (*(*(v41 - 8) + 48))(v27, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v4;
    v46 = v70;
    v47 = v78;
    (*v76)(v70, v27, v78);
    v48 = v66;
    (*v75)(v66, v27 + v44, v45);
    v49 = v67;
    v50 = sub_1006BE63C(v46);
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v65)(v48, v45);
      return 0;
    }

    v53 = v79;
    v54 = *(v49 + 56) + *(v79 + 72) * v50;
    v55 = v77;
    (*(v79 + 16))(v77, v54, v45);
    sub_10025C6DC(&qword_101186E80, &type metadata accessor for VideoArtwork);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v53 + 8);
    v57(v55, v45);
    result = (v57)(v48, v45);
    v4 = v45;
    if ((v56 & 1) == 0)
    {
      return v43;
    }
  }

  if (v60 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v60;
  }

  v26 = v25 - 1;
  v28 = v71;
  v27 = v72;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v60)
    {
      v58 = sub_10010FC20(&qword_101186E78);
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v23 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v30 = *(v61 + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v24 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10025B9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v49 - v7;
  v8 = type metadata accessor for Playlist.Entry();
  v53 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v49 - v11;
  v12 = _s7ContextV6SourceOMa(0);
  v13 = __chkstk_darwin(v12);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = sub_10010FC20(&unk_101186D60);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v49 - v20;
  v22 = (&v49 + *(v19 + 56) - v20);
  sub_10025C4D8(a1, &v49 - v20, _s7ContextV6SourceOMa);
  sub_10025C4D8(a2, v22, _s7ContextV6SourceOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10025C4D8(v21, v17, _s7ContextV6SourceOMa);
    v33 = *(sub_10010FC20(&qword_101183AD8) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v54 + 8))(&v17[v33], v4);
      (*(v53 + 8))(v17, v8);
      goto LABEL_8;
    }

    v34 = *(v53 + 32);
    v34(v50, v17, v8);
    v34(v51, v22, v8);
    v35 = *(v54 + 32);
    v35(v52, &v17[v33], v4);
    v36 = v49;
    v35(v49, v22 + v33, v4);
    v37 = Playlist.Entry.id.getter();
    v39 = v38;
    if (v37 == Playlist.Entry.id.getter() && v39 == v40)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = 0;
      if ((v41 & 1) == 0)
      {
LABEL_20:
        v46 = *(v54 + 8);
        v46(v36, v4);
        v46(v52, v4);
        v47 = *(v53 + 8);
        v47(v51, v8);
        v47(v50, v8);
LABEL_21:
        sub_10025C540(v21, _s7ContextV6SourceOMa);
        return v32 & 1;
      }
    }

    v42 = Playlist.id.getter();
    v44 = v43;
    if (v42 == Playlist.id.getter() && v44 == v45)
    {
      v32 = 1;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_20;
  }

  sub_10025C4D8(v21, v15, _s7ContextV6SourceOMa);
  v23 = *v15;
  v24 = v15[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v22;
    v26 = v22[1];
    v27 = [v23 identifiers];
    v28 = [v25 identifiers];
    v29 = [v27 intersectsSet:v28];

    if (v29)
    {
      v30 = [v24 identifiers];
      v31 = [v26 identifiers];
      v32 = [v30 intersectsSet:v31];
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_21;
  }

LABEL_8:
  sub_1000095E8(v21, &unk_101186D60);
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_10025BFB8(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextV6SourceOMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101186BB8);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_10010FC20(&qword_101186D58);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v45 - v13;
  v15 = *(v12 + 56);
  sub_1000089F8(a1, &v45 - v13, &qword_101186BB8);
  sub_1000089F8(a2, &v14[v15], &qword_101186BB8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1000095E8(v14, &qword_101186BB8);
      goto LABEL_10;
    }

LABEL_6:
    sub_1000095E8(v14, &qword_101186D58);
    goto LABEL_7;
  }

  sub_1000089F8(v14, v10, &qword_101186BB8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_10025C540(v10, _s7ContextV6SourceOMa);
    goto LABEL_6;
  }

  sub_10025C794(&v14[v15], v7, _s7ContextV6SourceOMa);
  v19 = sub_10025B9A8(v10, v7);
  sub_10025C540(v7, _s7ContextV6SourceOMa);
  sub_10025C540(v10, _s7ContextV6SourceOMa);
  sub_1000095E8(v14, &qword_101186BB8);
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v20 = _s7ContextVMa(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = a2 + v21;
  v25 = *(v24 + 8);
  if (v23 == 255)
  {
    if (v25 != 255)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v25 == 255)
    {
      goto LABEL_7;
    }

    v26 = *v22;
    v27 = *v24;
    if (v23)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }

      v28 = v20;

      v29 = sub_10047C90C(v26, v27);
    }

    else
    {
      if (v25)
      {
        goto LABEL_7;
      }

      v28 = v20;

      v29 = sub_10047C8C4(v26, v27);
    }

    v30 = v29;
    sub_1000D9134(v27, v25);
    v20 = v28;
    if ((v30 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v31 = v20[6];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (!v32)
  {
    if (!v33)
    {
      goto LABEL_25;
    }

LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v20;
  sub_100009F78(0, &qword_101183B40);
  v35 = v33;
  v36 = v32;
  v37 = static NSObject.== infix(_:_:)();

  v20 = v34;
  if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (*(a1 + v20[7]) != *(a2 + v20[7]))
  {
    goto LABEL_7;
  }

  v38 = v20[8];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39)
  {
    v41 = 0x7473696C79616C70;
  }

  else
  {
    v41 = 0x6979616C50776F6ELL;
  }

  if (v39)
  {
    v42 = 0xEE006C6961746544;
  }

  else
  {
    v42 = 0xEA0000000000676ELL;
  }

  if (v40)
  {
    v43 = 0x7473696C79616C70;
  }

  else
  {
    v43 = 0x6979616C50776F6ELL;
  }

  if (v40)
  {
    v44 = 0xEE006C6961746544;
  }

  else
  {
    v44 = 0xEA0000000000676ELL;
  }

  if (v41 == v43 && v42 == v44)
  {

    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

unint64_t sub_10025C454()
{
  result = qword_101186DC0;
  if (!qword_101186DC0)
  {
    sub_1001109D0(&qword_1011815E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186DC0);
  }

  return result;
}

uint64_t sub_10025C4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025C540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10025C5A0(uint64_t a1)
{
  v4 = *(_s7ContextV6SourceOMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_1002519F8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10025C6DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025C724(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101186DE8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025C794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025C804(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SocialProfile() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100259FAC(a1, a2, v6);
}

uint64_t sub_10025C884(uint64_t a1)
{
  v4 = *(type metadata accessor for SocialProfile() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_10025A1AC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10025C9B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10025A508(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10025CA84(uint64_t a1)
{
  sub_10010FC20(&qword_101186E68);

  return sub_10025AC0C(a1);
}

uint64_t sub_10025CB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101186E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025CB70(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10025CC3C, 0, 0);
}

uint64_t sub_10025CC3C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = Logger.collaboration.unsafeMutableAddressor();
  v0[14] = v4;
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Reaction] Will process entry reactions", v8, 2u);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];

  v12 = *(v11 + 8);
  v0[17] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_10025CDA0;
  v14 = v0[9];

  return sub_100256498(v14);
}

uint64_t sub_10025CDA0(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_10025CEA0, 0, 0);
}

uint64_t sub_10025CEA0()
{
  v1 = v0[19];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = [v0[19] results];
  v3 = v2;
  if (!v2)
  {

    goto LABEL_12;
  }

  if ([v2 totalItemCount] <= 0)
  {

LABEL_9:
    v3 = 0;
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v0[8] = sub_10010C550(_swiftEmptyArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 8;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10025D204;
  *(v6 + 24) = v5;
  v0[6] = sub_10025D20C;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1002DCBA0;
  v0[5] = &unk_1010A2558;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;

  [v8 enumerateSectionIdentifiersUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    return result;
  }

  v10 = v0[15];
  v11 = v0[14];
  v12 = v0[12];
  v13 = v0[10];
  v14 = CFAbsoluteTimeGetCurrent();
  v10(v12, v11, v13);
  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[17];
  v20 = v0[12];
  v21 = v0[10];
  if (v18)
  {
    v24 = v0[17];
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = [v15 totalItemCount];

    *(v22 + 12) = 2048;
    *(v22 + 14) = v14 - Current;
    _os_log_impl(&_mh_execute_header, v16, v17, "[Reaction] Mapped %ld reactions in %f seconds", v22, 0x16u);

    v24(v20, v21);
  }

  else
  {

    v19(v20, v21);
  }

  v3 = v0[8];

LABEL_12:

  v23 = v0[1];

  return v23(v3);
}

uint64_t sub_10025D21C(uint64_t *a1)
{
  v2 = sub_10010FC20(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_10025D2A0(void *a1)
{
  sub_10010FC20(&qword_101186F38);

  return sub_10025AE30(a1);
}

uint64_t sub_10025D360(uint64_t a1)
{
  v3 = *(_s7ContextVMa(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100258480(a1, v4, v5);
}

uint64_t sub_10025D41C()
{
  result = _s10ControllerCMa(319);
  if (v1 <= 0x3F)
  {
    result = _s7ContextVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *sub_10025D528(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v4[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_buttonState] = 0;
  v10 = OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_transitionStyle;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *&v5[v10] = v12;
  *&v5[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_defaultColor] = 0;
  *&v5[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedColor] = 0;
  *&v5[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedBackgroundColor] = 0;
  v27.receiver = v5;
  v27.super_class = type metadata accessor for NowPlayingTransitionsButton();
  v13 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_transitionStyle];
  v15 = v13;
  if (v14 > 1)
  {
    v20 = 0;
    v17 = 0;
  }

  else
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() imageNamed:v16];

    if (v17)
    {
      v18 = [v17 imageWithRenderingMode:2];
      v19 = [objc_opt_self() blackColor];
      v20 = [v18 imageWithTintColor:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  v21 = v15;
  [v21 setImage:v17 forState:0];
  [v21 setImage:v20 forState:4];

  sub_10025DB44();
  sub_10025D8B0();
  [v21 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v22 = [v21 layer];
  [v22 setCornerCurve:kCACornerCurveContinuous];

  v23 = [v21 layer];
  [v23 setCornerRadius:7.0];

  sub_10010FC20(&unk_101182D80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  v25 = sub_100050078();
  *(v24 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v24 + 40) = v25;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v21;
}

void sub_10025D8B0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_buttonState;
  [v1 setSelected:v1[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_buttonState] == 1];
  LODWORD(v4) = v1[v4];
  v5 = [v1 imageView];
  if (v4 == 1 && (v3 & 1) != 0)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v5 layer];

    [v7 setCompositingFilter:kCAFilterDestOut];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v8 = v5;
    v7 = [v5 layer];

    [v7 setCompositingFilter:0];
  }

LABEL_8:
  v9 = [v1 isSelected];
  if (v3)
  {
    if (v9)
    {
      v10 = *&v1[OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedColor];
    }

    else
    {
      if (qword_10117F900 != -1)
      {
        swift_once();
      }

      v10 = qword_101219098;
    }

    v13 = v10;
    [v1 setTintColor:v13];

    if ([v1 isSelected])
    {
      v12 = OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedBackgroundColor;
      goto LABEL_20;
    }
  }

  else
  {
    v11 = &OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedColor;
    if (!v9)
    {
      v11 = &OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_defaultColor;
    }

    [v1 setTintColor:*&v1[*v11]];
    if ([v1 isSelected])
    {
      v12 = OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_defaultColor;
LABEL_20:
      v14 = *&v1[v12];
      goto LABEL_22;
    }
  }

  v14 = [objc_opt_self() clearColor];
LABEL_22:
  v15 = v14;
  [v1 setBackgroundColor:?];
}

uint64_t sub_10025DB44()
{
  v1 = type metadata accessor for AutomationSemantics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  [v0 setAccessibilityLabel:v7];

  memset(v10, 0, 32);
  static AutomationSemantics.nowPlaying(name:id:)();
  sub_100011DF0(v10);
  UIView.setAutomationSemantics(_:)();
  return (*(v2 + 8))(v4, v1);
}

id sub_10025DE18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingTransitionsButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10025DEF0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_buttonState) = 0;
  v2 = OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_transitionStyle;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_defaultColor) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedColor) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27NowPlayingTransitionsButton_selectedBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10025DFC4()
{

  return swift_deallocClassInstance();
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_10025E038(void *a1, uint64_t a2)
{
  v3 = v2;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v60 - 8);
  __chkstk_darwin(v60);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9);
  v13 = *&v3[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
  if (v13)
  {
    v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v12;
    v57 = v8;
    v58 = v10;
    v14 = *&v3[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8];
    v15 = *&v3[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider];
    if (v15)
    {
      v65 = type metadata accessor for ArtworkPrefetchingController();
      aBlock[0] = v3;
      sub_100030444(v13);
      sub_100030444(v15);
      v16 = v3;
      v17 = v15(aBlock, a1);
      v19 = v18;
      v21 = v20;
      sub_100020438(v15);
      sub_1000095E8(aBlock, &unk_101183F30);
    }

    else
    {

      v17 = 0.0;
      v19 = 0;
      v21 = 0;
    }

    v22 = *&v3[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    v23 = *&v3[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider + 8];
    v52 = *&v3[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference];

    v62 = v22;
    v61 = v23;
    sub_100030444(v22);
    if (qword_10117F400 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_101187050);
    v25 = a1;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v59 = v6;
    v54 = v13;
    v53 = a2;
    if (v28)
    {
      v29 = v15;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v14;
      v33 = v32;
      aBlock[0] = v32;
      *v30 = 138543618;
      *(v30 + 4) = v25;
      *v31 = v25;
      *(v30 + 12) = 2082;
      type metadata accessor for IndexPath();
      v34 = v25;
      v35 = Array.description.getter();
      v37 = sub_1000105AC(v35, v36, aBlock);

      *(v30 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Collection view %{public}@ requests prefetching for indexPaths %{public}s", v30, 0x16u);
      sub_1000095E8(v31, &unk_101183D70);

      sub_10000959C(v33);
      v14 = v51;

      v15 = v29;
    }

    v38 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_1000089F8(&v3[v38], v69, &unk_101183F30);
    if (qword_10117F3F0 != -1)
    {
      swift_once();
    }

    v39 = qword_101187040;
    sub_1000089F8(v69, v68, &unk_101183F30);
    v40 = swift_allocObject();
    v41 = v68[1];
    *(v40 + 40) = v68[0];
    v42 = v62;
    *(v40 + 16) = v53;
    *(v40 + 24) = v42;
    *(v40 + 32) = v61;
    *(v40 + 56) = v41;
    *(v40 + 72) = v25;
    *(v40 + 80) = v17;
    *(v40 + 88) = v19;
    *(v40 + 96) = v21;
    *(v40 + 104) = v15 == 0;
    v43 = v54;
    *(v40 + 112) = v54;
    *(v40 + 120) = v14;
    *(v40 + 128) = v52;
    v66 = sub_10025FD38;
    v67 = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    v65 = &unk_1010A26C0;
    v44 = _Block_copy(aBlock);
    sub_100030444(v43);

    sub_100030444(v42);
    v45 = v25;

    v46 = v39;
    v47 = v55;
    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_100029680(&qword_101183F60, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100029908(&qword_101183F70, &qword_101182970);
    v48 = v57;
    v49 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    sub_100020438(v43);
    sub_100020438(v62);
    (*(v59 + 8))(v48, v49);
    (*(v56 + 8))(v47, v58);
    sub_1000095E8(v69, &unk_101183F30);
  }
}

uint64_t sub_10025E758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v40 = a1;
  v36 = a11;
  v35 = a10;
  v15 = sub_10010FC20(&unk_101195200);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  v21 = sub_10010FC20(&unk_1011815F0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v35 - v23;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = a9 & 1;
  v50 = v35;
  v51 = v36;
  v26 = sub_100123B10(sub_10025FD84, v41, v40);
  v27 = v26[2];
  if (v27)
  {
    sub_100029680(&unk_101184780, v25, type metadata accessor for ArtworkPrefetchingController.CacheReference);
    v28 = *(v22 + 80);
    v40 = v26;
    v29 = v26 + ((v28 + 32) & ~v28);
    v30 = *(v22 + 72);
    do
    {
      sub_1000089F8(v29, v24, &unk_1011815F0);
      v31 = type metadata accessor for Artwork.CropStyle();
      (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
      v32 = type metadata accessor for Artwork.ImageFormat();
      (*(*(v32 - 8) + 56))(v17, 1, 1, v32);
      static ArtworkImage.prefetch(artwork:pixelLength:width:height:cropStyle:imageFormat:cacheOwner:)();
      v33 = type metadata accessor for Artwork();
      (*(*(v33 - 8) + 8))(v24, v33);
      sub_1000095E8(v17, &unk_101195200);
      sub_1000095E8(v20, &unk_101184060);
      v29 += v30;
      --v27;
    }

    while (v27);
  }
}

uint64_t sub_10025EB10@<X0>(uint64_t a1@<X0>, double (*a2)(uint64_t, uint64_t, uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, double a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, char a9, void (*a10)(uint64_t, uint64_t))
{
  v40 = a8;
  v37 = a6;
  v38 = a7;
  v15 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Artwork();
  v39 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = a3;
    v23 = a2(a3, a4, a1, v19);
    v25 = v24;
    v27 = v26;
  }

  else
  {
    if (a9)
    {
LABEL_8:
      v30 = sub_10010FC20(&unk_1011815F0);
      return (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
    }

    v28 = a5;
    v22 = a3;
    v23 = v28;
    v25 = v37;
    v27 = v38;
  }

  type metadata accessor for CGSize(0);
  v43 = v23;
  v44 = v25;
  v41 = 0;
  v42 = 0;
  if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  a10(v22, a1);
  v29 = v39;
  if ((*(v39 + 48))(v17, 1, v18) == 1)
  {
    sub_1000095E8(v17, &unk_101188920);
    goto LABEL_8;
  }

  v32 = *(v29 + 32);
  v32(v21, v17, v18);
  v33 = sub_10010FC20(&unk_1011815F0);
  v34 = v40;
  v35 = &v40[*(v33 + 48)];
  v32(v40, v21, v18);
  *v35 = v23;
  *(v35 + 1) = v25;
  *(v35 + 2) = v27;
  return (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
}

void sub_10025EEF8(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v3 = v2;
  v63 = a2;
  v61 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexPath();
  v62 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *&v3[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding];
  if (v59)
  {
    v55 = v4;
    v15 = *&v3[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
    v57 = *&v3[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding + 8];
    v54 = v5;
    v58 = v15;
    if (v15)
    {
      sub_100030444(v59);
      sub_100030444(v15);
      v16 = v15(v3, v61);
      v18 = v17;
      v20 = v19;
      sub_100020438(v15);
    }

    else
    {

      v16 = 0.0;
      v18 = 0;
      v20 = 0;
    }

    v50 = v11;
    v51 = v9;
    v52 = v7;
    v53 = v8;
    v21 = *&v3[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_cachingReference];
    v22 = *&v3[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogMetricsProviding];
    v23 = *&v3[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogMetricsProviding + 8];
    v24 = *(v63 + 2);
    v25 = v3;
    v64 = v22;
    v49 = v21;
    v60 = v23;
    if (v24)
    {
      v26 = v62;
      v27 = v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      swift_unknownObjectRetain();
      sub_100030444(v22);
      v28 = *(v26 + 16);
      v26 += 16;
      v62 = *(v26 + 56);
      v63 = v28;
      v29 = (v26 - 8);
      v30 = _swiftEmptyArrayStorage;
      v56 = v25;
      v28(v14, v27, v12);
      while (1)
      {
        if (v64)
        {
          v31 = v64(v25, v61, v14);
          v33 = v32;
          v35 = v34;
        }

        else
        {
          v31 = v16;
          v33 = v18;
          v35 = v20;
          if (!v58)
          {
            goto LABEL_7;
          }
        }

        type metadata accessor for CGSize(0);
        aBlock = *&v31;
        v68 = v33;
        v65 = 0;
        v66 = 0;
        if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
        {
LABEL_7:
          (*v29)(v14, v12);
          goto LABEL_8;
        }

        v36 = v59(v25, v14);
        (*v29)(v14, v12);
        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1004993A8(0, v30[2] + 1, 1, v30);
          }

          v38 = v30[2];
          v37 = v30[3];
          if (v38 >= v37 >> 1)
          {
            v30 = sub_1004993A8((v37 > 1), v38 + 1, 1, v30);
          }

          v30[2] = v38 + 1;
          v39 = &v30[4 * v38];
          *(v39 + 4) = v36;
          v39[5] = v31;
          *(v39 + 6) = v33;
          *(v39 + 7) = v35;
          v25 = v56;
        }

LABEL_8:
        v27 += v62;
        if (!--v24)
        {
          goto LABEL_21;
        }

        v63(v14, v27, v12);
      }
    }

    swift_unknownObjectRetain();
    sub_100030444(v22);
    v30 = _swiftEmptyArrayStorage;
LABEL_21:
    if (qword_10117F3F8 != -1)
    {
      swift_once();
    }

    v40 = qword_101187048;
    v41 = swift_allocObject();
    v41[2] = v30;
    v41[3] = v25;
    v41[4] = v49;
    v71 = sub_10025FCC8;
    v72 = v41;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_10002BC98;
    v70 = &unk_1010A2648;
    v42 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v43 = v40;
    v44 = v25;
    v45 = v50;
    static DispatchQoS.unspecified.getter();
    v65 = _swiftEmptyArrayStorage;
    sub_100029680(&qword_101183F60, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100029908(&qword_101183F70, &qword_101182970);
    v46 = v52;
    v47 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100020438(v59);
    _Block_release(v42);

    sub_100020438(v64);
    swift_unknownObjectRelease();
    (*(v54 + 8))(v46, v47);
    (*(v51 + 8))(v45, v53);
  }
}

void sub_10025F5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 4;
      v11 = v7;
      [v11 setFittingSize:{v8, v9}];
      [v11 setDestinationScale:v10];

      v12 = String._bridgeToObjectiveC()();

      [v11 setCacheIdentifier:v12 forCacheReference:a3];

      v14[4] = UIScreen.Dimensions.size.getter;
      v14[5] = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_10025F750;
      v14[3] = &unk_1010A2670;
      v13 = _Block_copy(v14);
      [v11 setDestination:a2 configurationBlock:v13];
      _Block_release(v13);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10025F750(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, a3);

  return sub_10000959C(v8);
}

uint64_t sub_10025F7F8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  type metadata accessor for IndexPath();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

id sub_10025F888()
{
  v1 = &v0[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogMetricsProviding];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_cachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v0[v4] = swift_allocObject();
  v5 = &v0[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_cachingIdentifier];
  v6 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
  v7 = v6[1];
  *v5 = *v6;
  *(v5 + 1) = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for old_ArtworkPrefetchingController();

  return objc_msgSendSuper2(&v9, "init");
}