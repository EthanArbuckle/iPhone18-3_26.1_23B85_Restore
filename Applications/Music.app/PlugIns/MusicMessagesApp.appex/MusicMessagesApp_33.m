uint64_t TextBadge.view.getter(char a1)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v10[3] = sub_1004DA1CC();
  v10[4] = &protocol witness table for TintShapeStyle;
  sub_1000357EC(v10);
  sub_1004DA1BC();
  v9 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v9, a1);
  v7 = v6;
  sub_10033D3F4(&v9);
  return v7;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_100035868((a1 + 1), v45);
      sub_100008C70(v45, v45[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v18 = sub_1004DD3FC();
      v19 = [objc_opt_self() systemImageNamed:v18];

      if (v19)
      {
        v20 = [v19 imageWithConfiguration:*a1];

        v21 = [v20 imageWithRenderingMode:2];
        sub_1004DB8DC();
        v22 = sub_1004DB35C();
        v24 = v23;
        v26 = v25;
        v27 = sub_1004DB27C();
        v29 = v28;
        v31 = v30;
        sub_100051E10(v22, v24, v26 & 1);

        v32 = sub_1004DB24C();
        v34 = v33;
        v36 = v35;
        sub_100051E10(v27, v29, v31 & 1);

        AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();

        Text.accessibilityLabel(_:)();

        sub_100051E10(v32, v34, v36 & 1);

        sub_100008D24(v45);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        sub_1004DB90C();
        v2 = sub_1004DB35C();
        v4 = v3;
        v6 = v5;
        v7 = sub_1004DB27C();
        v9 = v8;
        v11 = v10;
        sub_100051E10(v2, v4, v6 & 1);

        LODWORD(v45[0]) = sub_1004DAC1C();
        v12 = sub_1004DB24C();
        v14 = v13;
        v16 = v15;
        sub_100051E10(v7, v9, v11 & 1);

        AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();

        Text.accessibilityLabel(_:)();

        sub_100051E10(v12, v14, v16 & 1);
      }

      else
      {
        v38 = String.nonBreakingSpace.unsafeMutableAddressor();
        v40 = *v38;
        v39 = v38[1];
        v44[0] = v40;
        v44[1] = v39;

        v41 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v43 = *v41;
        v42 = v41[1];

        v46._countAndFlagsBits = v43;
        v46._object = v42;
        sub_1004DD5FC(v46);

        LODWORD(v44[0]) = sub_1004DAC1C();
        Text.playableForegroundStyle<A>(_:isPlayable:)(v44, a2 & 1);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = sub_1004DA1CC();
  a1[5] = &protocol witness table for TintShapeStyle;
  sub_1000357EC(a1 + 1);
  result = sub_1004DA1BC();
  *a1 = v5;
  return result;
}

uint64_t sub_10033A634()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10033A6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10033D5C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10033A6D8(uint64_t a1)
{
  v2 = sub_10033D424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A714(uint64_t a1)
{
  v2 = sub_10033D424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A750(uint64_t a1)
{
  v2 = sub_10033D574();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A78C(uint64_t a1)
{
  v2 = sub_10033D574();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004DF08C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10033A874(uint64_t a1)
{
  v2 = sub_10033D520();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A8B0(uint64_t a1)
{
  v2 = sub_10033D520();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A8EC(uint64_t a1)
{
  v2 = sub_10033D4CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A928(uint64_t a1)
{
  v2 = sub_10033D4CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033A964(uint64_t a1)
{
  v2 = sub_10033D478();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033A9A0(uint64_t a1)
{
  v2 = sub_10033D478();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_100004CB8(&qword_1006408B8);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v22 - v4;
  v5 = sub_100004CB8(&qword_1006408C0);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v24 = &v22 - v6;
  v25 = sub_100004CB8(&qword_1006408C8);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v22 - v7;
  v9 = sub_100004CB8(&qword_1006408D0);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_100004CB8(&qword_1006408D8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_100008C70(a1, a1[3]);
  sub_10033D424();
  v16 = v31;
  sub_1004DF30C();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_10033D574();
      sub_1004DEEEC();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_10033D4CC();
      v17 = v24;
      sub_1004DEEEC();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_10033D478();
      v17 = v28;
      sub_1004DEEEC();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_10033D520();
  sub_1004DEEEC();
  v21 = v25;
  sub_1004DEF2C();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10033AE88@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10033D730(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v60 = sub_1004D966C();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DCB3C();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DD05C();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DC95C();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  isa = v10[-1].isa;
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100640908);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_1004DCA0C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004D8BFC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v56 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v55 - v24;
  v26 = *(v20 + 16);
  v57 = v1;
  v27 = v1;
  v28 = v26;
  (v26)(&v55 - v24, v27, v19, v23);
  v29 = (*(v20 + 88))(v25, v19);
  if (v29 != enum case for GenericMusicItem.album(_:))
  {
    if (v29 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v20 + 96))(v25, v19);
      v33 = v70;
      v32 = v71;
      (*(v70 + 32))(v5, v25, v71);
      sub_1004DCACC();
      v34 = sub_1004D8CFC();
      (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
      v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v14);
      (*(v33 + 8))(v5, v32);
      return v31;
    }

    if (v29 == enum case for GenericMusicItem.composer(_:) || v29 == enum case for GenericMusicItem.creditArtist(_:) || v29 == enum case for GenericMusicItem.curator(_:) || v29 == enum case for GenericMusicItem.editorialItem(_:) || v29 == enum case for GenericMusicItem.genre(_:) || v29 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v20 + 96))(v25, v19);
      v35 = v67;
      v36 = isa;
      v37 = v69;
      (*(isa + 4))(v67, v25, v69);
      sub_1004DC27C();
LABEL_15:
      v38 = sub_1004D8CFC();
      (*(*(v38 - 8) + 56))(v14, 0, 1, v38);
      v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v14);
      (*(v36 + 1))(v35, v37);
      return v31;
    }

    if (v29 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v20 + 96))(v25, v19);
      v35 = v64;
      v36 = v65;
      v37 = v66;
      v65[4](v64, v25, v66);
      sub_1004DCE4C();
      goto LABEL_15;
    }

    if (v29 == enum case for GenericMusicItem.playlistFolder(_:) || v29 == enum case for GenericMusicItem.radioShow(_:) || v29 == enum case for GenericMusicItem.recordLabel(_:) || v29 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for GenericMusicItem.song(_:))
    {
      (*(v20 + 96))(v25, v19);
      v35 = v61;
      v36 = v62;
      v37 = v63;
      v62[4](v61, v25, v63);
      sub_1004DC84C();
      goto LABEL_15;
    }

    if (v29 == enum case for GenericMusicItem.station(_:) || v29 == enum case for GenericMusicItem.tvEpisode(_:) || v29 == enum case for GenericMusicItem.tvSeason(_:) || v29 == enum case for GenericMusicItem.tvShow(_:) || v29 == enum case for GenericMusicItem.uploadedAudio(_:) || v29 == enum case for GenericMusicItem.uploadedVideo(_:) || v29 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v20 + 8))(v25, v19);
    }

    else
    {
      v39 = Logger.badging.unsafeMutableAddressor();
      v41 = v58;
      v40 = v59;
      v42 = v60;
      (*(v58 + 16))(v59, v39, v60);
      v43 = v56;
      v28(v56, v57, v19);
      v44 = sub_1004D964C();
      v45 = sub_1004DDF8C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v70) = v45;
        v47 = v46;
        v71 = swift_slowAlloc();
        v72 = v71;
        *v47 = 136315394;
        *(v47 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v72);
        *(v47 + 12) = 2080;
        sub_10033E570(&qword_10063E770, &type metadata accessor for GenericMusicItem);
        v48 = sub_1004DEFFC();
        v50 = v49;
        v51 = *(v20 + 8);
        v69 = v44;
        v51(v43, v19);
        v52 = sub_1002E5CC4(v48, v50, &v72);

        *(v47 + 14) = v52;
        v53 = v69;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unhandled case for favorite badge with item: %s, %s", v47, 0x16u);
        swift_arrayDestroy();

        (*(v41 + 8))(v59, v60);
      }

      else
      {

        v51 = *(v20 + 8);
        v51(v43, v19);
        (*(v41 + 8))(v40, v42);
      }

      v51(v25, v19);
    }

    return 2;
  }

  (*(v20 + 96))(v25, v19);
  (*(v16 + 32))(v18, v25, v15);
  sub_1004DC97C();
  v30 = sub_1004D8CFC();
  (*(*(v30 - 8) + 56))(v14, 0, 1, v30);
  v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v14);
  (*(v16 + 8))(v18, v15);
  return v31;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v99) = a1;
  v71 = sub_1004D966C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1004D924C();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004D8FEC();
  v96 = *(v3 - 8);
  v97 = v3;
  __chkstk_darwin(v3);
  v95 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004D91EC();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100640910);
  __chkstk_darwin(v6 - 8);
  v98 = &v65 - v7;
  v8 = sub_1004D92AC();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v81 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1004D916C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004D911C();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DD05C();
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v90 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DCD1C();
  v85 = *(v14 - 8);
  v86 = v14;
  __chkstk_darwin(v14);
  v84 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DC95C();
  v88 = *(v16 - 8);
  v89 = v16;
  __chkstk_darwin(v16);
  v87 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DC2DC();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004CB8(&qword_100640918);
  __chkstk_darwin(v21 - 8);
  v23 = &v65 - v22;
  v24 = sub_1004DCA0C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1004D8BFC();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v65 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v65 - v33;
  v35 = *(v29 + 16);
  v35(&v65 - v33, v100, v28, v32);
  v36 = (*(v29 + 88))(v34, v28);
  if (v36 != enum case for GenericMusicItem.album(_:))
  {
    v38 = v99;
    if (v36 == enum case for GenericMusicItem.artist(_:) || v36 == enum case for GenericMusicItem.composer(_:) || v36 == enum case for GenericMusicItem.creditArtist(_:) || v36 == enum case for GenericMusicItem.curator(_:) || v36 == enum case for GenericMusicItem.editorialItem(_:) || v36 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v36 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v29 + 96))(v34, v28);
      v39 = v95;
      v40 = v96;
      v41 = v97;
      (*(v96 + 32))(v95, v34, v97);
      v42 = v98;
      sub_1004D8FAC();
LABEL_11:
      v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v42, v38 & 1);
      (*(v40 + 8))(v39, v41);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v29 + 96))(v34, v28);
      v44 = v93;
      v43 = v94;
      (*(v93 + 32))(v20, v34, v94);
      sub_1004DC29C();
      v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v23, v38 & 1);
      (*(v44 + 8))(v20, v43);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v29 + 96))(v34, v28);
      v45 = v90;
      v46 = v91;
      v47 = v92;
      (*(v91 + 32))(v90, v34, v92);
      sub_1004DCE3C();
LABEL_16:
      v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v23, v38 & 1);
      (*(v46 + 8))(v45, v47);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.playlistFolder(_:) || v36 == enum case for GenericMusicItem.radioShow(_:) || v36 == enum case for GenericMusicItem.recordLabel(_:) || v36 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v36 == enum case for GenericMusicItem.song(_:))
    {
      (*(v29 + 96))(v34, v28);
      v45 = v87;
      v46 = v88;
      v47 = v89;
      (*(v88 + 32))(v87, v34, v89);
      sub_1004DC8CC();
      goto LABEL_16;
    }

    if (v36 == enum case for GenericMusicItem.station(_:))
    {
      (*(v29 + 96))(v34, v28);
      v48 = v84;
      v49 = v85;
      v50 = v86;
      (*(v85 + 32))(v84, v34, v86);
      sub_1004DCCDC();
LABEL_25:
      v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v23, v38 & 1);
      (*(v49 + 8))(v48, v50);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v29 + 96))(v34, v28);
      v39 = v81;
      v40 = v82;
      v41 = v83;
      (*(v82 + 32))(v81, v34, v83);
      v42 = v98;
      sub_1004D925C();
      goto LABEL_11;
    }

    if (v36 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v29 + 96))(v34, v28);
      v51 = v79;
      v52 = v78;
      v53 = v80;
      (*(v79 + 32))(v78, v34, v80);
      v54 = v98;
      sub_1004D920C();
      v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v54, v38 & 1);
      (*(v51 + 8))(v52, v53);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v29 + 96))(v34, v28);
      v40 = v76;
      v39 = v75;
      v41 = v77;
      (*(v76 + 32))(v75, v34, v77);
      v42 = v98;
      sub_1004D91AC();
      goto LABEL_11;
    }

    if (v36 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v29 + 96))(v34, v28);
      v49 = v73;
      v48 = v72;
      v50 = v74;
      (*(v73 + 32))(v72, v34, v74);
      sub_1004D90DC();
      goto LABEL_25;
    }

    if (v36 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v29 + 96))(v34, v28);
      v49 = v67;
      v48 = v66;
      v50 = v68;
      (*(v67 + 32))(v66, v34, v68);
      sub_1004D912C();
      goto LABEL_25;
    }

    if (v36 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v29 + 8))(v34, v28);
    }

    else
    {
      v56 = Logger.badging.unsafeMutableAddressor();
      (*(v70 + 16))(v69, v56, v71);
      (v35)(v65, v100, v28);
      v57 = sub_1004D964C();
      LODWORD(v100) = sub_1004DDF5C();
      if (os_log_type_enabled(v57, v100))
      {
        v58 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v101 = v99;
        *v58 = 136315394;
        *(v58 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v101);
        *(v58 + 12) = 2080;
        sub_10033E570(&qword_10063E770, &type metadata accessor for GenericMusicItem);
        v59 = v65;
        v60 = sub_1004DEFFC();
        v62 = v61;
        v63 = *(v29 + 8);
        v63(v59, v28);
        v64 = sub_1002E5CC4(v60, v62, &v101);

        *(v58 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v57, v100, "Unhandled case for explicit badge with item: %s, %s", v58, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v63 = *(v29 + 8);
        v63(v65, v28);
      }

      (*(v70 + 8))(v69, v71);
      v63(v34, v28);
    }

    return 2;
  }

  (*(v29 + 96))(v34, v28);
  (*(v25 + 32))(v27, v34, v24);
  sub_1004DC9CC();
  v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v23, v99 & 1);
  (*(v25 + 8))(v27, v24);
  return v37;
}

double sub_10033C9E0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1004DB20C();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  sub_1004DB1DC();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  sub_1004DB1FC();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  sub_1004DB1FC();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  sub_1004DB1FC();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  sub_1004DB1EC();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  sub_1004DB1FC();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v24 = a2;
  v3 = sub_1004DC81C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100004CB8(&qword_1006409D0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v23[-v9];
  v11 = sub_100004CB8(&qword_100640918);
  __chkstk_darwin(v11 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v14);
  v17 = &v23[-v16];
  (*(v4 + 104))(&v23[-v16], enum case for ContentRating.explicit(_:), v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = *(v8 + 56);
  sub_1000108DC(a1, v10, &qword_100640918);
  sub_1000108DC(v17, &v10[v18], &qword_100640918);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    sub_1000108DC(v10, v13, &qword_100640918);
    if (v19(&v10[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v18], v3);
      sub_10033E570(&qword_1006409D8, &type metadata accessor for ContentRating);
      v21 = sub_1004DD35C();
      sub_10001074C(a1, &qword_100640918);
      v22 = *(v4 + 8);
      v22(v6, v3);
      sub_10001074C(v17, &qword_100640918);
      v22(v13, v3);
      sub_10001074C(v10, &qword_100640918);
      if (v21)
      {
        return v24 & 1;
      }

      return 2;
    }

    sub_10001074C(a1, &qword_100640918);
    sub_10001074C(v17, &qword_100640918);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_10001074C(v10, &qword_1006409D0);
    return 2;
  }

  sub_10001074C(a1, &qword_100640918);
  sub_10001074C(v17, &qword_100640918);
  if (v19(&v10[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10001074C(v10, &qword_100640918);
  return v24 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  v4 = sub_100004CB8(&qword_100640910);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1004D918C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a1, v6, &qword_100640910);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001074C(a1, &qword_100640910);
    sub_10001074C(v6, &qword_100640910);
    return 2;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1004D917C();
    sub_10001074C(a1, &qword_100640910);
    (*(v8 + 8))(v10, v7);
    result = 2;
    if (v12 != 2)
    {
      if (v12)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100640908);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_1000108DC(a1, &v13 - v6, &qword_100640908);
  v8 = sub_1004D8CFC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1000108DC(v7, v4, &qword_100640908);
    v10 = (*(v9 + 88))(v4, v8);
    if (v10 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v10 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v11 = 3;
        goto LABEL_4;
      }

      if (v10 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v9 + 8))(v4, v8);
      }
    }
  }

  v11 = 2;
LABEL_4:
  sub_10001074C(v7, &qword_100640908);
  sub_10001074C(a1, &qword_100640908);
  return v11;
}

unint64_t sub_10033D424()
{
  result = qword_1006408E0;
  if (!qword_1006408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408E0);
  }

  return result;
}

unint64_t sub_10033D478()
{
  result = qword_1006408E8;
  if (!qword_1006408E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408E8);
  }

  return result;
}

unint64_t sub_10033D4CC()
{
  result = qword_1006408F0;
  if (!qword_1006408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408F0);
  }

  return result;
}

unint64_t sub_10033D520()
{
  result = qword_1006408F8;
  if (!qword_1006408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006408F8);
  }

  return result;
}

unint64_t sub_10033D574()
{
  result = qword_100640900;
  if (!qword_100640900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640900);
  }

  return result;
}

uint64_t sub_10033D5C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004DF08C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10033D730(void *a1)
{
  v39 = sub_100004CB8(&qword_1006409A8);
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v32 - v2;
  v38 = sub_100004CB8(&qword_1006409B0);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v32 - v3;
  v4 = sub_100004CB8(&qword_1006409B8);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_100004CB8(&qword_1006409C0);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100004CB8(&qword_1006409C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  sub_100008C70(a1, v15);
  sub_10033D424();
  v16 = v44;
  sub_1004DF2FC();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = sub_1004DEEDC();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_100332660();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = sub_1004DEB5C();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      sub_100004CB8(&qword_1006402B8);
      *v26 = &type metadata for TextBadge;
      sub_1004DEE5C();
      sub_1004DEB4C();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        sub_10033D4CC();
        sub_1004DEE4C();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_10033D478();
        sub_1004DEE4C();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_10033D520();
      v29 = v34;
      sub_1004DEE4C();
      v30 = v36;
      v31 = sub_1004DEE9C();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_10033D574();
      sub_1004DEE4C();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  sub_100008D24(v45);
  return v12;
}

unint64_t sub_10033DE10()
{
  result = qword_100640920;
  if (!qword_100640920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640920);
  }

  return result;
}

unint64_t sub_10033DE68()
{
  result = qword_100640928;
  if (!qword_100640928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640928);
  }

  return result;
}

unint64_t sub_10033DEC0()
{
  result = qword_100640930;
  if (!qword_100640930)
  {
    sub_100008DE4(&qword_100640938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640930);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10033E100()
{
  result = qword_100640940;
  if (!qword_100640940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640940);
  }

  return result;
}

unint64_t sub_10033E158()
{
  result = qword_100640948;
  if (!qword_100640948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640948);
  }

  return result;
}

unint64_t sub_10033E1B0()
{
  result = qword_100640950;
  if (!qword_100640950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640950);
  }

  return result;
}

unint64_t sub_10033E208()
{
  result = qword_100640958;
  if (!qword_100640958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640958);
  }

  return result;
}

unint64_t sub_10033E260()
{
  result = qword_100640960;
  if (!qword_100640960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640960);
  }

  return result;
}

unint64_t sub_10033E2B8()
{
  result = qword_100640968;
  if (!qword_100640968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640968);
  }

  return result;
}

unint64_t sub_10033E310()
{
  result = qword_100640970;
  if (!qword_100640970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640970);
  }

  return result;
}

unint64_t sub_10033E368()
{
  result = qword_100640978;
  if (!qword_100640978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640978);
  }

  return result;
}

unint64_t sub_10033E3C0()
{
  result = qword_100640980;
  if (!qword_100640980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640980);
  }

  return result;
}

unint64_t sub_10033E418()
{
  result = qword_100640988;
  if (!qword_100640988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640988);
  }

  return result;
}

unint64_t sub_10033E470()
{
  result = qword_100640990;
  if (!qword_100640990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640990);
  }

  return result;
}

unint64_t sub_10033E4C8()
{
  result = qword_100640998;
  if (!qword_100640998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640998);
  }

  return result;
}

unint64_t sub_10033E51C()
{
  result = qword_1006409A0;
  if (!qword_1006409A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006409A0);
  }

  return result;
}

uint64_t sub_10033E570(unint64_t *a1, void (*a2)(uint64_t))
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  sub_100004CB8(&qword_100642970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100511AB0;
  if (a3)
  {
    a3 = sub_1004DD3FC();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10033E7D8();
  isa = sub_1004DD85C().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  sub_100004CB8(&qword_100642970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100511AB0;
  if (a4)
  {
    a4 = sub_1004DD3FC();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10033E7D8();
  isa = sub_1004DD85C().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_10033E7D8()
{
  result = qword_1006409E0;
  if (!qword_1006409E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006409E0);
  }

  return result;
}

uint64_t sub_10033E858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E958();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10033E8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10033E958();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10033E920()
{
  sub_10033E958();
  sub_1004DAA7C();
  __break(1u);
}

unint64_t sub_10033E958()
{
  result = qword_1006409E8;
  if (!qword_1006409E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006409E8);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x50);
  type metadata accessor for Card.ViewController.RootViewController();
  v5 = sub_100340478(a1);
  *&v2[qword_1006409F0] = v5;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for Card.ViewController();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v17, "initWithRootViewController:", v6);
  [v7 setModalPresentationStyle:{2, v17.receiver, v17.super_class}];
  v8 = [v7 sheetPresentationController];

  if (v8)
  {
    v9 = [objc_opt_self() systemBackgroundColor];
    [v8 _setNonLargeBackground:v9];

    sub_100004CB8(&qword_100642970);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100511AB0;
    sub_100006F10(0, &qword_1006409F8);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
    v12 = v6;
    v13 = v7;
    v14 = sub_1004DE39C();

    *(v10 + 32) = v14;
    isa = sub_1004DD85C().super.isa;

    [v8 setDetents:isa];

    [v8 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  return v7;
}

id sub_10033ECB8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10033F9A8(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Card.ViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  sub_10033F9A8(0, 1);
  [v0 setPreferredContentSize:?];
  sub_100004CB8(qword_100640A00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = sub_1004D999C();
  *(v2 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004DE06C();
  swift_unknownObjectRelease();
}

void sub_10033EF18(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_10033F9A8(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Card.ViewController();
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_10033F034(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_10033F0F0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for Card.ViewController.RootViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10033F5AC();
    [v2 addSubview:v3];

    v4 = *&v0[qword_100640A88];
    v5 = *&v0[qword_100640A98];
    v6 = v4;
    v7 = [v5 view];
    if (v7)
    {
      v8 = v7;
      [v6 addSubview:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10033F218(void *a1)
{
  v1 = a1;
  sub_10033F0F0();
}

id sub_10033F260()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for Card.ViewController.RootViewController();
  objc_msgSendSuper2(&v48, "viewDidLayoutSubviews");
  sub_10033F7F8();
  v2 = *&v0[qword_100640A98];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v49.origin.x = v6;
  v49.origin.y = v8;
  v49.size.width = v10;
  v49.size.height = v12;
  CGRectGetWidth(v49);
  sub_10033F7F8();
  sub_1004DE34C();
  sub_1004DA97C();
  v14 = v13;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  Height = CGRectGetHeight(v50);
  sub_10033F748(Height < v14);
  v25 = sub_10033F5AC();
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = result;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v51.origin.x = v28;
  v51.origin.y = v30;
  v51.size.width = v32;
  v51.size.height = v34;
  Width = CGRectGetWidth(v51);
  sub_1004DE35C();
  [v25 setContentSize:{Width, v14 + v36}];

  result = [*&v1[qword_100640A98] view];
  if (result)
  {
    v37 = result;
    v38 = qword_100640A88;
    v39 = *&v1[qword_100640A88];
    sub_1004DE3BC();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    [v37 setFrame:{v41, v43, v45, v47}];
    return [*&v1[v38] _setPocketsEnabled:Height < v14];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10033F564(void *a1)
{
  v1 = a1;
  sub_10033F260();
}

id sub_10033F5AC()
{
  v1 = qword_100640A88;
  v2 = *&v0[qword_100640A88];
  if (v2)
  {
    v3 = *&v0[qword_100640A88];
  }

  else
  {
    v4 = sub_10033F610(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10033F610(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033F748(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      sub_10033F7F8();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10033F7F8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void sub_10033F9A8(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[qword_100640A98];
  sub_10033F7F8();
  sub_1004DE34C();
  sub_1004DA97C();
  v24 = v23;

  sub_10033F7F8();
  sub_1004DE35C();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    sub_10033F748(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_10033FC50(uint64_t a1)
{
  v2 = *(a1 + qword_100640A98);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void sub_10033FE30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1003406B4();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1004DD3FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_10033FF6C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id sub_100340008(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_100340090(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = sub_1004DAEAC();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *(v2 + qword_100640A88) = 0;
  *(v2 + qword_100640A90) = 0x4079E00000000000;
  v12 = *((v5 & v4) + 0x58);
  sub_1004DA9DC();
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_1004DA9AC();
  sub_1004DAE9C();
  sub_1004DA98C();
  sub_1004DA99C();
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = objc_opt_self();
    v17 = [v16 clearColor];
    [v15 setBackgroundColor:v17];

    *(v2 + qword_100640A98) = v13;
    v18 = type metadata accessor for Card.ViewController.RootViewController();
    v27.receiver = v2;
    v27.super_class = v18;
    v19 = v13;
    v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
    result = [v20 view];
    if (result)
    {
      v21 = result;
      v22 = [v16 clearColor];
      [v21 setBackgroundColor:v22];

      [v20 addChildViewController:*&v20[qword_100640A98]];
      v23 = [v20 navigationItem];
      sub_100006F10(0, &qword_10063E8F8);
      sub_100006F10(0, &qword_10063E980);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v25 = swift_allocObject();
      v25[2] = v7;
      v25[3] = v12;
      v25[4] = v24;
      v28.value.super.super.isa = sub_1004DE62C();
      v28.is_nil = 0;
      isa = sub_1004DDFDC(UIBarButtonSystemItemClose, v28, v29).super.super.isa;
      [v23 setLeftBarButtonItem:isa];

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003404CC()
{

  return swift_deallocObject();
}

id sub_100340584(void *a1)
{
  sub_10033F9A8(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_1003405D8()
{
  *(v0 + qword_100640A88) = 0;
  *(v0 + qword_100640A90) = 0x4079E00000000000;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_100340784()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003407BC()
{

  return swift_deallocObject();
}

uint64_t sub_100340800()
{
  sub_1004DD98C();
  sub_1004DBBCC();
  sub_1004DBB5C();
  return v1;
}

uint64_t sub_10034085C()
{
  sub_1004DD98C();
  sub_1004DBBCC();
  sub_1004DBB7C();
  return v1;
}

double sub_100340940()
{
  sub_100004CB8(&qword_100640D08);
  sub_1004DBB5C();
  return v1;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v45 = a15;
  v44[0] = a17;
  v44[1] = a18;
  v28 = sub_1004DE7CC();
  __chkstk_darwin(v28 - 8);
  v30 = v44 - v29;
  v50 = a16;
  v51 = a17;
  v52 = a18;
  v53 = a19;
  v31 = type metadata accessor for CarouselView();
  (*(*(a16 - 8) + 56))(v30, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v30);
  v32 = (a9 + v31[24]);
  v54 = 0;
  sub_1004DB9DC();
  v33 = v51;
  *v32 = v50;
  v32[1] = v33;
  v34 = [objc_opt_self() currentTraitCollection];
  v35 = [v34 userInterfaceIdiom];

  v36 = 8.0;
  if (v35 == 6)
  {
    v36 = 10.0;
  }

  v37 = (a9 + v31[22]);
  *(a9 + v31[25]) = v36;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_100346848(a4, a9 + v31[17]);
  v39 = a9 + v31[18];
  v40 = v47;
  *v39 = v46;
  *(v39 + 1) = v40;
  *(v39 + 2) = a10;
  *(v39 + 3) = a11;
  *(a9 + v31[20]) = a12;
  *(a9 + v31[21]) = a13;
  v41 = (a9 + v31[19]);
  v42 = v49;
  *v41 = v48;
  v41[1] = v42;
  v43 = v45;
  *v37 = a14;
  v37[1] = v43;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v2 = sub_1004DE7CC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_1004DB9DC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v97 = sub_1004DA19C();
  v89 = *(v97 - 8);
  __chkstk_darwin(v97);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 - 1);
  v96 = *(v86 + 64);
  __chkstk_darwin(v4);
  v95 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  v7 = sub_1004DD98C();
  v93 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = a1;
  v9 = a1[7];
  v114 = a1[3];
  *&v115 = v9;
  v10 = v114;
  v99 = v114;
  v11 = v9;
  v94 = v9;
  swift_getOpaqueTypeMetadata2();
  v12 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  v14 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = v7;
  *&v115 = AssociatedTypeWitness;
  *(&v115 + 1) = v12;
  v116 = WitnessTable;
  v117 = AssociatedConformanceWitness;
  sub_1004DBC3C();
  v114 = v10;
  *&v115 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = &protocol witness table for _FrameLayout;
  v111 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_1004D9CBC();
  v17 = swift_getWitnessTable();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeMetadata2();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_1004D9CFC();
  v19 = swift_getWitnessTable();
  v114 = v18;
  *&v115 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_1004DAC5C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100640B28);
  v20 = sub_1004DA32C();
  v21 = sub_1004DAE7C();
  v114 = v18;
  *&v115 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_100348194(&qword_100640B30, &type metadata accessor for SafeAreaPaddingModifier);
  v109 = v22;
  v110 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1003468B8();
  v107 = v24;
  v108 = v25;
  v26 = swift_getWitnessTable();
  v114 = v20;
  *&v115 = v21;
  *(&v115 + 1) = v26;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = v20;
  *&v115 = v21;
  *(&v115 + 1) = v26;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v28 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  *&v115 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v114 = OpaqueTypeMetadata2;
  *&v115 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v114 = v29;
  *&v115 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v114 = v29;
  *&v115 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v114 = v31;
  *&v115 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_1004DA32C();
  v92 = v14;
  v114 = v14;
  v33 = v93;
  v116 = v93;
  *&v34 = v14;
  *(&v34 + 1) = v99;
  v76 = v34;
  v35 = v85;
  v98 = *(v85 + 2);
  v115 = v98;
  type metadata accessor for PageControl();
  sub_1004DA32C();
  sub_1004DE7CC();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v36 = sub_1004DBB2C();
  v80 = *(v36 - 8);
  __chkstk_darwin(v36);
  v71 = &v70 - v37;
  v74 = v36;
  v38 = sub_1004DA32C();
  v79 = v38;
  v84 = *(v38 - 8);
  __chkstk_darwin(v38);
  v91 = &v70 - v39;
  v72 = swift_getWitnessTable();
  v105 = v72;
  v106 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v78 = v40;
  v77 = sub_100348194(qword_100640B40, &type metadata accessor for ScrollPosition);
  v114 = v38;
  *&v115 = v97;
  *(&v115 + 1) = v40;
  v116 = v77;
  v81 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v82 = swift_getOpaqueTypeMetadata2();
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v73 = &v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v75 = &v70 - v43;
  v44 = v87;
  v100 = v76;
  v101 = v98;
  v45 = v94;
  v102 = v33;
  v103 = v94;
  v104 = v87;
  sub_1004DA90C();
  sub_1004DBB1C();
  v46 = v86;
  *&v76 = *(v86 + 16);
  v47 = v95;
  (v76)(v95, v44, v35);
  v48 = (*(v46 + 80) + 64) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v50 = v99;
  *(v49 + 16) = v92;
  *(v49 + 24) = v50;
  *(v49 + 32) = v98;
  *(v49 + 48) = v33;
  *(v49 + 56) = v45;
  v51 = *(v46 + 32);
  v51(v49 + v48, v47, v35);
  v52 = v74;
  v53 = v71;
  sub_1004DB6FC();

  (*(v80 + 8))(v53, v52);
  sub_100004CB8(&qword_100640B20);
  v54 = v88;
  sub_1004DBB5C();
  v55 = v95;
  (v76)(v95, v44, v35);
  v56 = swift_allocObject();
  v57 = v99;
  *(v56 + 16) = v92;
  *(v56 + 24) = v57;
  *(v56 + 32) = v98;
  v58 = v94;
  *(v56 + 48) = v93;
  *(v56 + 56) = v58;
  v51(v56 + v48, v55, v35);
  v59 = v73;
  v60 = v79;
  v61 = v97;
  v62 = v78;
  v63 = v77;
  v64 = v91;
  sub_1004DB70C();

  (*(v89 + 8))(v54, v61);
  (*(v84 + 8))(v64, v60);
  v114 = v60;
  *&v115 = v61;
  *(&v115 + 1) = v62;
  v116 = v63;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v75;
  v67 = v82;
  sub_100339DC8(v59, v82, v65);
  v68 = *(v83 + 8);
  v68(v59, v67);
  sub_100339DC8(v66, v67, v65);
  return (v68)(v66, v67);
}

uint64_t sub_100341984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v209 = a1;
  v197 = a8;
  v228 = a2;
  v229 = a4;
  v199 = a4;
  v200 = a5;
  v230 = a5;
  v231 = a6;
  v14 = type metadata accessor for PageControl();
  v148 = *(v14 - 8);
  __chkstk_darwin(v14);
  v146 = (&v145 - v15);
  v208 = v16;
  v17 = sub_1004DA32C();
  v191 = *(v17 - 8);
  __chkstk_darwin(v17);
  v149 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v147 = &v145 - v20;
  v195 = v21;
  *&v196 = COERCE_DOUBLE(sub_1004DE7CC());
  v192 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v193 = &v145 - v24;
  v25 = sub_1004DACFC();
  v189 = *(v25 - 8);
  v190 = v25;
  __chkstk_darwin(v25);
  v184 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1004DAE5C();
  __chkstk_darwin(v27 - 8);
  v186 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1004DAE7C();
  v187 = *(v202 - 8);
  __chkstk_darwin(v202);
  v185 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = a2;
  v229 = a3;
  v201 = a3;
  v230 = a4;
  v231 = a5;
  v232 = a6;
  v233 = a7;
  v207 = type metadata accessor for CarouselView();
  v182 = *(v207 - 8);
  v183 = *(v182 + 64);
  __chkstk_darwin(v207);
  v181 = &v145 - v30;
  v31 = sub_100004CB8(&qword_100640B20);
  __chkstk_darwin(v31 - 8);
  v198 = &v145 - v32;
  v33 = sub_1004DD98C();
  v210 = a6;
  v212 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v228 = a3;
  v229 = a7;
  v204 = a7;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v33;
  v229 = AssociatedTypeWitness;
  v230 = v35;
  v231 = WitnessTable;
  v232 = AssociatedConformanceWitness;
  sub_1004DBC3C();
  v38 = v201;
  v228 = v201;
  v229 = a7;
  *&v227[16] = swift_getOpaqueTypeConformance2();
  *&v227[17] = &protocol witness table for _FrameLayout;
  *&v227[15] = swift_getWitnessTable();
  swift_getWitnessTable();
  v39 = sub_1004D9CBC();
  v40 = swift_getWitnessTable();
  v228 = v39;
  v229 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v39;
  v229 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1004D9CFC();
  v162 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v145 - v42;
  v44 = swift_getWitnessTable();
  v228 = v41;
  v229 = v44;
  v45 = v44;
  v150 = v44;
  v160 = swift_getOpaqueTypeMetadata2();
  v163 = *(v160 - 8);
  __chkstk_darwin(v160);
  v153 = &v145 - v46;
  sub_1004DAC5C();
  v47 = sub_1004DA32C();
  v165 = *(v47 - 8);
  __chkstk_darwin(v47);
  v203 = &v145 - v48;
  sub_100008DE4(&qword_100640B28);
  v159 = v47;
  v49 = sub_1004DA32C();
  v164 = *(v49 - 8);
  __chkstk_darwin(v49);
  v161 = &v145 - v50;
  v228 = v41;
  v229 = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v152 = v51;
  v52 = sub_100348194(&qword_100640B30, &type metadata accessor for SafeAreaPaddingModifier);
  *&v227[13] = v51;
  *&v227[14] = v52;
  v53 = swift_getWitnessTable();
  v156 = v53;
  v54 = sub_1003468B8();
  *&v227[11] = v53;
  *&v227[12] = v54;
  v55 = swift_getWitnessTable();
  v56 = v49;
  v154 = v49;
  v57 = v202;
  v228 = v49;
  v229 = v202;
  v230 = v55;
  v231 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v58 = v55;
  v155 = v55;
  v59 = swift_getOpaqueTypeMetadata2();
  v179 = *(v59 - 8);
  __chkstk_darwin(v59);
  v151 = &v145 - v60;
  v228 = v56;
  v229 = v57;
  v230 = v58;
  v231 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v61 = swift_getOpaqueTypeConformance2();
  v228 = v59;
  v229 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v176 = *(v62 - 8);
  __chkstk_darwin(v62);
  v171 = &v145 - v63;
  v180 = v59;
  v228 = v59;
  v229 = v61;
  v173 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v228 = v62;
  v229 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v172 = *(v65 - 8);
  __chkstk_darwin(v65);
  v166 = v64;
  v167 = &v145 - v66;
  v177 = v62;
  v228 = v62;
  v229 = v64;
  v67 = swift_getOpaqueTypeConformance2();
  v178 = v65;
  v228 = v65;
  v229 = v67;
  v169 = v67;
  v68 = swift_getOpaqueTypeMetadata2();
  v174 = *(v68 - 8);
  __chkstk_darwin(v68);
  v168 = &v145 - v69;
  v175 = v70;
  *&v71 = COERCE_DOUBLE(sub_1004DA32C());
  v205 = *(v71 - 8);
  v206 = *&v71;
  __chkstk_darwin(v71);
  v188 = &v145 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v170 = &v145 - v74;
  __chkstk_darwin(v75);
  v211 = &v145 - v76;
  sub_1004DAEDC();
  v213 = v212;
  v214 = v38;
  v78 = v199;
  v77 = v200;
  v215 = v199;
  v216 = v200;
  v217 = v210;
  v218 = v204;
  v79 = v209;
  v219 = v209;
  sub_1004D9D0C();
  v80 = v207;
  sub_100004CB8(&qword_100640B20);
  v81 = v198;
  sub_1004DBB7C();
  sub_1004DBE7C();
  v82 = v153;
  sub_1004DB48C();
  sub_100347FC8(v81);
  (*(v162 + 8))(v43, v41);
  v83 = sub_1004DAF1C();
  v84 = v80;
  v85 = (v79 + *(v80 + 96));
  v86 = *v85;
  v87 = v85[1];
  v228 = v86;
  v229 = v87;
  sub_100004CB8(&qword_100640CF0);
  sub_1004DB9EC();
  v88 = v160;
  sub_100344048(v83, COERCE__INT64(round(v227[0])), 0);
  (*(v163 + 8))(v82, v88);
  _s3__C6CGSizeVMa_1(0);
  v89 = v181;
  v90 = v182;
  (*(v182 + 16))(v181, v79, v84);
  v91 = (*(v90 + 80) + 64) & ~*(v90 + 80);
  v92 = swift_allocObject();
  v93 = v201;
  v92[2] = v212;
  v92[3] = v93;
  v92[4] = v78;
  v92[5] = v77;
  v94 = v151;
  v95 = v204;
  v92[6] = v210;
  v92[7] = v95;
  v96 = v92 + v91;
  v97 = v184;
  (*(v90 + 32))(v96, v89, v84);
  sub_100348194(&qword_100640CF8, _s3__C6CGSizeVMa_1);
  v98 = v161;
  v99 = v159;
  v100 = v203;
  sub_10034444C();

  (*(v165 + 8))(v100, v99);
  sub_1004DAE4C();
  v101 = v185;
  sub_1004DAE6C();
  v102 = v154;
  v103 = v202;
  sub_1004DB5CC();
  (*(v187 + 8))(v101, v103);
  (*(v164 + 8))(v98, v102);
  sub_1004DACEC();
  sub_100004CB8(&qword_100640D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  LOBYTE(v101) = sub_1004DAEFC();
  *(inited + 32) = v101;
  v105 = sub_1004DAEDC();
  *(inited + 33) = v105;
  sub_1004DAEEC();
  sub_1004DAEEC();
  if (sub_1004DAEEC() != v101)
  {
    sub_1004DAEEC();
  }

  sub_1004DAEEC();
  if (sub_1004DAEEC() != v105)
  {
    sub_1004DAEEC();
  }

  v106 = v171;
  v107 = v180;
  sub_1004DB52C();
  (*(v189 + 8))(v97, v190);
  (*(v179 + 8))(v94, v107);
  v108 = v167;
  v109 = v177;
  sub_1004DB58C();
  (*(v176 + 8))(v106, v109);
  sub_100340800();
  sub_1004DD91C();

  v111 = v168;
  v110 = v169;
  v112 = v178;
  sub_1004DB47C();
  (*(v172 + 8))(v108, v112);
  sub_100340940();
  sub_1004DBD1C();
  v228 = v112;
  v229 = v110;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v170;
  v115 = v175;
  sub_1004DB66C();
  (*(v174 + 8))(v111, v115);
  *&v227[4] = v113;
  *&v227[5] = &protocol witness table for _FrameLayout;
  v116 = v206;
  v202 = swift_getWitnessTable();
  sub_100339DC8(v114, *&v116, v202);
  v117 = v114;
  v118 = v212;
  v203 = *(v205 + 8);
  v204 = v205 + 8;
  (v203)(v117, *&v116);
  sub_100340800();
  v119 = sub_1004DD91C();

  if (v119 < 2)
  {
    v136 = v194;
    (*(v191 + 56))(v194, 1, 1, v195);
    *&v227[2] = swift_getWitnessTable();
    *&v227[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v120 = sub_10034085C();
    v122 = v121;
    v124 = v123;
    sub_100004CB8(&qword_100640B20);
    v125 = v198;
    sub_1004DBB7C();
    v126 = v146;
    *v146 = v120;
    v126[1] = v122;
    v126[2] = v124;
    v228 = v118;
    v229 = v199;
    v230 = v200;
    v231 = v210;
    v127 = type metadata accessor for PageControl();
    sub_100346848(v125, v126 + *(v127 + 52));
    sub_1004DBD1C();
    v128 = v208;
    v129 = swift_getWitnessTable();
    v130 = v149;
    sub_1004DB66C();
    (*(v148 + 8))(v126, v128);
    v220 = v129;
    v221 = &protocol witness table for _FrameLayout;
    v131 = v195;
    v132 = swift_getWitnessTable();
    v133 = v147;
    sub_100339DC8(v130, v131, v132);
    v134 = v191;
    v135 = *(v191 + 8);
    v135(v130, v131);
    sub_100339DC8(v133, v131, v132);
    v135(v133, v131);
    v136 = v194;
    (*(v134 + 32))(v194, v130, v131);
    (*(v134 + 56))(v136, 0, 1, v131);
  }

  v137 = v193;
  sub_10039BC4C(v136, v193);
  v138 = v192;
  v139 = *(v192 + 8);
  v140 = *&v196;
  v139(v136, v196);
  v141 = v206;
  v142 = v188;
  (*(v205 + 16))(v188, v211, COERCE_DOUBLE(*&v206));
  v228 = v142;
  (*(v138 + 16))(v136, v137, COERCE_DOUBLE(*&v140));
  v229 = v136;
  v227[0] = v141;
  v227[1] = v140;
  v225 = v202;
  v223 = swift_getWitnessTable();
  v224 = &protocol witness table for _FrameLayout;
  v222 = swift_getWitnessTable();
  v226 = swift_getWitnessTable();
  sub_10039B8E8(&v228, 2uLL, v227);
  v139(v137, *&v140);
  v143 = v203;
  (v203)(v211, *&v141);
  v139(v136, *&v140);
  return v143(v142, *&v141);
}

uint64_t sub_100343020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a5;
  v46 = a4;
  v49 = a1;
  v50 = a8;
  v12 = sub_1004DABAC();
  __chkstk_darwin(v12 - 8);
  v47 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DD98C();
  v45 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = a3;
  v59 = a7;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1004DA32C();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v14;
  v59 = AssociatedTypeWitness;
  v60 = v16;
  v61 = WitnessTable;
  v62 = AssociatedConformanceWitness;
  v41 = sub_1004DBC3C();
  v58 = a3;
  v59 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = &protocol witness table for _FrameLayout;
  v64 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v19 = sub_1004D9CBC();
  v44 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = v37 - v20;
  v39 = swift_getWitnessTable();
  v58 = v19;
  v59 = v39;
  v42 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v37 - v25;
  v37[2] = sub_1004DA7CC();
  v27 = a2;
  v58 = a2;
  v59 = a3;
  v28 = a3;
  v29 = v46;
  v30 = v48;
  v60 = v46;
  v61 = v48;
  v31 = v45;
  v62 = v45;
  v63 = a7;
  v37[1] = *(v49 + *(type metadata accessor for CarouselView() + 80));
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = v30;
  v55 = v31;
  v56 = a7;
  v57 = v49;
  sub_100343FC8();
  v32 = v38;
  sub_1004D9CAC();
  v33 = v39;
  sub_1004DB59C();
  (*(v44 + 8))(v32, v19);
  v58 = v19;
  v59 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  sub_100339DC8(v23, OpaqueTypeMetadata2, v34);
  v35 = *(v43 + 8);
  v35(v23, OpaqueTypeMetadata2);
  sub_100339DC8(v26, OpaqueTypeMetadata2, v34);
  return (v35)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_100343524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a4;
  v51 = a5;
  v49 = a1;
  v52 = a8;
  v57 = a2;
  v58 = a3;
  v41 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v43 = a7;
  v12 = type metadata accessor for CarouselView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = v39 - v14;
  v15 = sub_1004DD98C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = AssociatedTypeWitness;
  v57 = a3;
  v58 = a7;
  v44 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_1004DA32C();
  v39[1] = v17;
  v47 = v15;
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v15;
  v58 = AssociatedTypeWitness;
  v59 = v17;
  v60 = WitnessTable;
  v61 = AssociatedConformanceWitness;
  v20 = sub_1004DBC3C();
  v48 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v40 = v39 - v24;
  v25 = v12;
  v26 = v49;
  v56 = sub_100340800();
  v27 = v42;
  (*(v13 + 16))(v42, v26, v25);
  v28 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = a2;
  v30 = v41;
  v32 = v50;
  v31 = v51;
  *(v29 + 3) = v41;
  *(v29 + 4) = v32;
  *(v29 + 5) = v31;
  *(v29 + 6) = a6;
  v33 = v43;
  *(v29 + 7) = v43;
  (*(v13 + 32))(&v29[v28], v27, v25);
  v57 = v30;
  v58 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = &protocol witness table for _FrameLayout;
  v34 = swift_getWitnessTable();
  sub_1004DBC2C();
  v53 = v34;
  v35 = swift_getWitnessTable();
  v36 = v40;
  sub_100339DC8(v22, v20, v35);
  v37 = *(v48 + 8);
  v37(v22, v20);
  sub_100339DC8(v36, v20, v35);
  return (v37)(v36, v20);
}

uint64_t sub_100343940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v72 = a7;
  v58 = a3;
  v60 = *(a3 - 8);
  v64 = *(v60 + 64);
  __chkstk_darwin(a1);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v10;
  v76 = v11;
  v12 = v11;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  v17 = v16;
  v56 = v16;
  v18 = type metadata accessor for CarouselView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v68 = *(v12 - 8);
  __chkstk_darwin(v23);
  v53 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v12;
  v76 = v17;
  v69 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v55 = &v52 - v25;
  v61 = sub_1004DA32C();
  v71 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v63 = &v52 - v29;
  v30 = v18;
  v52 = v18;
  v31 = *(v18 + 76);
  v54 = a2;
  (*(a2 + v31))(a1, v28);
  v32 = v22;
  (*(v19 + 16))(v22, a2, v30);
  v33 = v60;
  v34 = v59;
  v35 = v58;
  (*(v60 + 16))(v59, a1, v58);
  v36 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v37 = (v20 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v35;
  *(v38 + 3) = v12;
  v39 = v12;
  v40 = v66;
  *(v38 + 4) = v65;
  *(v38 + 5) = v40;
  v41 = v56;
  *(v38 + 6) = v67;
  *(v38 + 7) = v41;
  (*(v19 + 32))(&v38[v36], v32, v52);
  (*(v33 + 32))(&v38[v37], v34, v35);
  v42 = v55;
  v43 = v53;
  sub_1004DB42C();

  (*(v68 + 8))(v43, v39);
  sub_100340940();
  sub_100340940();
  sub_1004DBD1C();
  v75 = v39;
  v76 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = OpaqueTypeMetadata2;
  sub_1004DB66C();
  (*(v70 + 8))(v42, v46);
  v73 = OpaqueTypeConformance2;
  v74 = &protocol witness table for _FrameLayout;
  v47 = v61;
  WitnessTable = swift_getWitnessTable();
  v49 = v63;
  sub_100339DC8(v45, v47, WitnessTable);
  v50 = *(v71 + 8);
  v50(v45, v47);
  sub_100339DC8(v49, v47, WitnessTable);
  return (v50)(v49, v47);
}

uint64_t sub_100343F20(uint64_t a1, char a2)
{
  v2 = 0;
  if (a2)
  {
    v2 = sub_1004DBD7C();
  }

  __chkstk_darwin(v2);
  sub_1004DA0EC();
}

uint64_t sub_100343FC8()
{
  sub_1004DABAC();
  sub_100348194(&unk_100640D10, &type metadata accessor for PinnedScrollableViews);
  return sub_1004DF33C();
}

uint64_t sub_100344048(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1004DAC5C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0uLL;
  v9 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1004D9C8C();
    *(&v8 + 1) = v10;
    *(&v9 + 1) = v11;
  }

  v13[0] = v8;
  v13[1] = v9;
  v14 = a3 & 1;
  sub_1004DAC4C();
  sub_1004DB6EC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100344184@<X0>(void *a1@<X8>)
{
  result = sub_1004D9FFC();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1003441B0(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_1004DE7CC();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin(v19);
  v29 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v22 = type metadata accessor for CarouselView();
  v23 = (v21 - sub_100340940()) * 0.5;
  v24 = (a2 + *(v22 + 96));
  v25 = *v24;
  v26 = v24[1];
  v33 = *v24;
  v34 = v26;
  sub_100004CB8(&qword_100640CF0);
  sub_1004DB9EC();
  if (v32 != v23)
  {
    v32 = v23;
    v33 = v25;
    v34 = v26;
    sub_1004DB9FC();
  }

  sub_1004DBA1C();
  sub_1004DB9EC();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v28 = v29;
  (*(v18 + 32))(v29, v17, a3);
  sub_100343F20(v28, 0);
  return (*(v18 + 8))(v28, a3);
}

uint64_t sub_10034444C()
{

  sub_1004DAC6C();
  sub_1004DAC7C();
  sub_1004DB6EC();
}

uint64_t sub_100344528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a7;
  v34 = a4;
  v37 = a1;
  v10 = sub_1004DE7CC();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v33 = &v28 - v11;
  v32 = *(a2 - 8);
  __chkstk_darwin(v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DA19C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1004DE7CC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - v21;
  v38 = a2;
  v39 = a3;
  v40 = v34;
  v41 = v35;
  v42 = a6;
  v43 = v36;
  v36 = type metadata accessor for CarouselView();
  sub_100004CB8(&qword_100640B20);
  sub_1004DBB5C();
  swift_getAssociatedConformanceWitness();
  sub_1004DA17C();
  (*(v15 + 8))(v17, v14);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v22, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v23 = v19;
  v38 = sub_100340800();
  sub_1004DD98C();
  swift_getWitnessTable();
  v24 = v33;
  sub_1004DDD8C();
  v25 = v32;
  if ((*(v32 + 48))(v24, 1, a2) == 1)
  {
    (*(v20 + 8))(v22, v23);
    (*(v30 + 8))(v24, v31);
  }

  else
  {
    v27 = v29;
    (*(v25 + 32))(v29, v24, a2);

    sub_100343F20(v27, 0);
    (*(v25 + 8))(v27, a2);
    return (*(v20 + 8))(v22, v23);
  }
}

uint64_t sub_100344998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a6;
  v55 = a7;
  v53 = a5;
  v57 = a3;
  v11 = sub_1004DE7CC();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v43 - v14;
  v50 = *(a4 - 8);
  __chkstk_darwin(v15);
  v56 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1004DE7CC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  swift_getAssociatedConformanceWitness();
  sub_1004DA17C();
  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v19 + 8))(v21, v18);
  }

  (*(v22 + 32))(v25, v21, AssociatedTypeWitness);
  v27 = a8;
  v28 = v53;
  v59 = a4;
  v60 = v53;
  v46 = v22;
  v47 = v25;
  v30 = v54;
  v29 = v55;
  v61 = v54;
  v62 = v55;
  v63 = v27;
  v64 = a9;
  v44 = type metadata accessor for CarouselView();
  v31 = sub_100340800();
  v45 = &v43;
  v58 = v31;
  __chkstk_darwin(v31);
  *(&v43 - 8) = a4;
  *(&v43 - 7) = v28;
  *(&v43 - 6) = v30;
  *(&v43 - 5) = v29;
  v32 = v47;
  *(&v43 - 4) = v27;
  *(&v43 - 3) = a9;
  *(&v43 - 2) = v32;
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDD5C();

  if (v60 == 1)
  {
    return (*(v46 + 8))(v32, AssociatedTypeWitness);
  }

  v33 = v59;
  v34 = v44;
  v35 = v57;
  sub_100340800();
  v36 = v56;
  v55 = v33;
  sub_1004DD99C();

  v37 = v50;
  v38 = v48;
  (*(v50 + 16))(v48, v36, a4);
  (*(v37 + 56))(v38, 0, 1, a4);
  v40 = v51;
  v39 = v52;
  (*(v51 + 16))(v49, v38, v52);
  sub_1004DBA1C();
  sub_1004DB9FC();
  (*(v40 + 8))(v38, v39);
  v41 = (v35 + *(v34 + 88));
  v42 = v56;
  if (*v41)
  {
    (*v41)(v55, v56);
  }

  (*(v37 + 8))(v42, a4);
  return (*(v46 + 8))(v47, AssociatedTypeWitness);
}

uint64_t sub_100344F00()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_1004DEACC();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1004DD35C();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_100345048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v21 = a8;
  v12 = sub_1004DA19C();
  __chkstk_darwin(v12 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = v19 - v14;
  sub_1004DEACC();
  sub_1004DBE7C();
  v19[1] = v17;
  v19[2] = v16;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v20;
  v27 = a7;
  v28 = v21;
  type metadata accessor for CarouselView();
  sub_100004CB8(&qword_100640B20);
  sub_1004DBB5C();
  swift_getAssociatedConformanceWitness();
  sub_1004DA18C();
  (*(v22 + 8))(v15, AssociatedTypeWitness);
  return sub_1004DBB6C();
}

void *sub_100345248(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100640B20);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v5;
  type metadata accessor for PageControl.Coordinator();
  v6 = sub_10034085C();
  v8 = v7;
  v10 = v9;
  sub_100004CB8(&qword_100640B20);
  sub_1004DBB7C();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v8;
  v11[4] = v10;
  sub_100346848(v4, v11 + qword_100640BE8);
  return v11;
}

void *sub_100345360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_100346848(a4, v8 + qword_100640BE8);
  return v8;
}

uint64_t sub_1003453D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1004DA19C();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v60 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = sub_1004DE7CC();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v56 = &v49 - v11;
  v63 = AssociatedTypeWitness;
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v12);
  v52 = &v49 - v13;
  v54 = *(v9 - 8);
  __chkstk_darwin(v14);
  v69 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = sub_1004DE7CC();
  v53 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_100004CB8(&qword_100640B20);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  swift_getWitnessTable();
  sub_1004DAD3C();
  sub_1004DAD2C();
  v23 = v72;
  sub_100004CB8(&qword_100640B20);
  sub_1004DBB7C();
  v24 = qword_100640BE8;
  swift_beginAccess();
  v55 = v23;
  sub_100347D68(v22, v23 + v24);
  swift_endAccess();
  v25 = [a1 numberOfPages];
  sub_100340800();
  v26 = sub_1004DD91C();

  if (v25 != v26)
  {
    sub_100340800();
    v27 = sub_1004DD91C();

    [a1 setNumberOfPages:v27];
  }

  v64 = a1;
  v68 = a3;
  v61 = v4;
  v72 = sub_100340800();
  v28 = v9;
  v29 = sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DD72C();

  v70 = v71;
  sub_1004DED4C();
  sub_1004DED1C();
  v49 = v29;
  sub_1004DED3C();
  v30 = (v53 + 32);
  v31 = TupleTypeMetadata2;
  v32 = (v54 + 32);
  v33 = (v54 + 8);
  while (1)
  {
    v34 = v65;
    sub_1004DED2C();
    (*v30)(v19, v34, v66);
    if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
    {
      break;
    }

    v35 = *v19;
    (*v32)(v69, &v19[*(v31 + 48)], v28);
    v36 = (*(*(v68 + 24) + 8))(v28);
    if (v36)
    {
      v37 = v36;
      [v64 setIndicatorImage:v36 forPage:v35];
    }

    (*v33)(v69, v28);
    v31 = TupleTypeMetadata2;
  }

  v38 = v68;
  sub_100004CB8(&qword_100640B20);
  v39 = v57;
  sub_1004DBB5C();
  v40 = v60;
  v41 = v28;
  v42 = v63;
  swift_getAssociatedConformanceWitness();
  v43 = v56;
  sub_1004DA17C();
  (*(v58 + 8))(v39, v59);
  v44 = v62;
  if ((*(v62 + 48))(v43, 1, v42) == 1)
  {

    return (*(v50 + 8))(v43, v51);
  }

  else
  {
    v46 = v52;
    (*(v44 + 32))(v52, v43, v42);
    v71 = sub_100340800();
    __chkstk_darwin(v71);
    *(&v49 - 6) = v41;
    *(&v49 - 5) = *(v38 + 24);
    *(&v49 - 3) = v40;
    *(&v49 - 2) = v46;
    swift_getWitnessTable();
    sub_1004DDD5C();

    if (v73 != 1)
    {
      v47 = v72;
      v48 = v64;
      if ([v64 currentPage] != v47)
      {
        [v48 setCurrentPage:v47];
      }
    }

    return (*(v44 + 8))(v46, v42);
  }
}

uint64_t sub_100345C3C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_1004DEACC();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1004DD35C();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_100345D84(void *a1)
{
  v2 = v1;
  v59 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v51 = &v45 - v5;
  v6 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v54 = &v45 - v8;
  v9 = sub_1004DA19C();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100004CB8(&qword_100640B20);
  __chkstk_darwin(v57);
  v56 = &v45 - v11;
  v63 = *(v6 - 8);
  __chkstk_darwin(v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v61 = &v45 - v18;
  v62 = sub_1004DBBCC();
  v55 = *(v62 - 8);
  *&v19 = __chkstk_darwin(v62).n128_u64[0];
  v60 = &v45 - v20;
  v21 = [a1 currentPage];
  v67 = *(v2 + 16);
  v68 = *(v2 + 24);
  sub_1004DD98C();
  sub_1004DBBCC();
  swift_getWitnessTable();
  result = sub_1004DBB9C();
  if (v21 >= v65 && v21 < v66)
  {
    v67 = *(v2 + 16);
    v68 = *(v2 + 24);
    v65 = v21;
    v48 = TupleTypeMetadata2;
    sub_1004DBBAC();
    v23 = qword_100640BE8;
    swift_beginAccess();
    v46 = v23;
    v24 = v2 + v23;
    v25 = v56;
    sub_100347F58(v24, v56);
    v26 = v58;
    sub_1004DBB5C();
    sub_100347FC8(v25);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1004DA17C();
    (*(v52 + 8))(v26, v53);
    sub_1004DBBBC();
    v27 = v64;
    (*(v64 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v28 = *(v48 + 48);
    v29 = v63;
    v30 = *(v63 + 16);
    v31 = v54;
    v30();
    v53 = v28;
    (v30)(&v31[v28], v16, v6);
    v32 = *(v27 + 48);
    if (v32(v31, 1, AssociatedTypeWitness) == 1)
    {
      v33 = *(v29 + 8);
      v33(v16, v6);
      if (v32(&v31[v53], 1, AssociatedTypeWitness) == 1)
      {
        v33(v31, v6);
LABEL_11:
        v33(v61, v6);
        return (*(v55 + 8))(v60, v62);
      }
    }

    else
    {
      v34 = v50;
      (v30)(v50, v31, v6);
      v35 = v53;
      if (v32(&v31[v53], 1, AssociatedTypeWitness) != 1)
      {
        v40 = v64;
        v41 = &v31[v35];
        v42 = v51;
        (*(v64 + 32))(v51, v41, AssociatedTypeWitness);
        v43 = sub_1004DD35C();
        v44 = *(v40 + 8);
        v44(v42, AssociatedTypeWitness);
        v33 = *(v63 + 8);
        v33(v16, v6);
        v44(v50, AssociatedTypeWitness);
        v33(v31, v6);
        if (v43)
        {
          goto LABEL_11;
        }

LABEL_9:
        v36 = v56;
        sub_100347F58(v2 + v46, v56);
        v37 = v51;
        v38 = v62;
        v39 = v60;
        sub_1004DBBBC();
        sub_1004DBB5C();
        sub_1004DA18C();
        (*(v64 + 8))(v37, AssociatedTypeWitness);
        sub_1004DBB6C();
        sub_100347FC8(v36);
        v33(v61, v6);
        return (*(v55 + 8))(v39, v38);
      }

      v33 = *(v63 + 8);
      v33(v16, v6);
      (*(v64 + 8))(v34, AssociatedTypeWitness);
    }

    (*(v49 + 8))(v31, v48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1003465DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100345D84(v3);
}

uint64_t sub_10034662C()
{

  sub_100347FC8(v0 + qword_100640BE8);
  return v0;
}

uint64_t sub_100346680()
{
  sub_10034662C();

  return swift_deallocClassInstance();
}

void *sub_1003466E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100345248(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100346710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10034678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100346808()
{
  swift_getWitnessTable();
  sub_1004DAA7C();
  __break(1u);
}

uint64_t sub_100346848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003468B8()
{
  result = qword_100640B38;
  if (!qword_100640B38)
  {
    sub_100008DE4(&qword_100640B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100640B38);
  }

  return result;
}

uint64_t sub_100346950()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for CarouselView() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_100344528(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100346A0C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CarouselView() - 8);
  return sub_100344998(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_100346B28()
{
  sub_1004DD98C();
  sub_1004DBBCC();
  if (v0 <= 0x3F)
  {
    sub_10034737C(319, &qword_100640BC8, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      sub_10034737C(319, &qword_100640BD0, _s3__C6CGSizeVMa_1);
      if (v2 <= 0x3F)
      {
        sub_100338374();
        if (v3 <= 0x3F)
        {
          sub_1003473D0();
          if (v4 <= 0x3F)
          {
            sub_1004DE7CC();
            sub_1004DBA1C();
            if (v5 <= 0x3F)
            {
              sub_100347434();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100346C98(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004DA19C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100346F80(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004DA19C();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void sub_10034737C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DBBCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003473D0()
{
  if (!qword_100640BD8)
  {
    sub_100008DE4(&qword_100643390);
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100640BD8);
    }
  }
}

void sub_100347434()
{
  if (!qword_100640BE0)
  {
    v0 = sub_1004DBA1C();
    if (!v1)
    {
      atomic_store(v0, &qword_100640BE0);
    }
  }
}

void sub_100347484()
{
  sub_10034737C(319, &qword_100640BC8, &type metadata accessor for ScrollPosition);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100347554()
{
  sub_1004DD98C();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1004DA32C();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1004DBC3C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004D9CBC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1004D9CFC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1004DAC5C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100640B28);
  sub_1004DA32C();
  sub_1004DAE7C();
  swift_getOpaqueTypeConformance2();
  sub_100348194(&qword_100640B30, &type metadata accessor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  sub_1003468B8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1004DA32C();
  type metadata accessor for PageControl();
  sub_1004DA32C();
  sub_1004DE7CC();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB2C();
  sub_1004DA32C();
  sub_1004DA19C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100348194(qword_100640B40, &type metadata accessor for ScrollPosition);
  return swift_getOpaqueTypeConformance2();
}

void sub_100347B08()
{
  sub_1004DD98C();
  sub_1004DBBCC();
  if (v0 <= 0x3F)
  {
    sub_10034737C(319, &qword_100640BC8, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100347BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_100640B20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100347C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100640B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100347D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100347E00(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIPageControl) init];
  type metadata accessor for PageControl();
  swift_getWitnessTable();
  sub_1004DAD3C();
  sub_1004DAD2C();
  [v3 addTarget:a2 action:"updateCurrentPage:" forControlEvents:4096];

  v4 = objc_opt_self();
  v5 = [v4 systemFillColor];
  [v3 setPageIndicatorTintColor:v5];

  v6 = [v4 labelColor];
  [v3 setCurrentPageIndicatorTintColor:v6];

  return v3;
}

uint64_t sub_100347F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100640B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100347FC8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100640B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10034809C(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1003441B0(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100348194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003481DC()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[17];

  v4 = *(sub_100004CB8(&qword_100640B20) + 32);
  v5 = sub_1004DA19C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  if (*(v2 + v1[22]))
  {
  }

  v6 = v2 + v1[23];
  v7 = *(v9 - 8);
  if (!(*(v7 + 48))(v6, 1, v9))
  {
    (*(v7 + 8))(v6, v9);
  }

  sub_1004DE7CC();
  sub_1004DBA1C();

  return swift_deallocObject();
}

uint64_t sub_100348424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_100343940(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1003484F8()
{
  v11 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v10 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(v11 - 8);
  v4 = *(v3 + 80);

  v5 = v0 + v2 + v1[17];

  v6 = *(sub_100004CB8(&qword_100640B20) + 32);
  v7 = sub_1004DA19C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v2 + v1[22]))
  {
  }

  v8 = v0 + v2 + v1[23];
  if (!(*(v3 + 48))(v8, 1, v11))
  {
    (*(v3 + 8))(v8, v11);
  }

  sub_1004DE7CC();
  sub_1004DBA1C();

  (*(v3 + 8))(v0 + ((v2 + v10 + v4) & ~v4), v11);
  return swift_deallocObject();
}

uint64_t sub_100348784()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CarouselView() - 8);
  v3 = (((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  type metadata accessor for CarouselView();
  return sub_100343F20(v0 + v3, 1);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        sub_10034A5C8(sub_10034AADC, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_100004CB8(&qword_100642970);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100511AB0;
        sub_100006F10(0, &qword_100640D40);
        *(v23 + 32) = sub_1004DE5DC(4);
        isa = sub_1004DD85C().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      sub_10034A5C8(sub_100349B44, v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      sub_10034A5C8(sub_10034B148, v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x80000001004F6030;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_10034A2B0();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

uint64_t static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_100348DE0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_100349140();

  return v14;
}

void sub_100349140()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_100349140();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  sub_1004DE41C();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100349804;
}

void sub_100349804(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_1003498F4;
}

double sub_100349938(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  sub_100004CB8(&qword_100642970);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100511AB0;
  sub_100006F10(0, &qword_100640D40);
  *(v8 + 32) = sub_1004DE5DC(4);
  isa = sub_1004DD85C().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_100349A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
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
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_100349B0C()
{

  return swift_deallocObject();
}

void sub_100349B60()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_100349E5C(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_100349E5C(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_100349B60();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100349E28;
}

void sub_100349E28(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100349B60();
  }
}

void sub_100349E5C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_100006F10(0, &unk_100640F10);
    v6 = v5;
    v3 = v3;
    v7 = sub_1004DE5FC();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_100006F10(0, &qword_100644F50);
    v11 = v2;
    v12 = sub_1004DE5FC();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_10034A1A0;
}

void sub_10034A1A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_10034A2B0()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_1004DD3FC();
  [v1 removeAnimationForKey:v4];

  *&v20[0] = v3;
  *(&v20[0] + 1) = v2;

  v21._countAndFlagsBits = 0x676E69646E65;
  v21._object = 0xE600000000000000;
  sub_1004DD5FC(v21);
  v5 = sub_1004DD3FC();

  [v1 removeAnimationForKey:v5];

  [v1 setStrokeEnd:0.6];
  v6 = sub_1004DD3FC();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  v8 = [v1 presentationLayer];
  if (!v8)
  {
    v8 = v1;
  }

  v9 = sub_1004DD3FC();
  v10 = [v8 valueForKeyPath:v9];

  if (v10)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1002DFAAC(v20);
  }

  isa = sub_1004DDB7C().super.super.isa;
  [v7 setFromValue:isa];

  v12 = sub_1004DDB7C().super.super.isa;
  [v7 setToValue:v12];

  v13 = v7;
  [v13 setRemovedOnCompletion:1];
  [v13 setFillMode:kCAFillModeBoth];
  [v13 setDuration:1.0];
  LODWORD(v14) = 2139095040;
  [v13 setRepeatCount:v14];
  v15 = CACurrentMediaTime();
  [v13 duration];
  [v13 setBeginTime:{(v15 - fmod(v15, v16))}];

  v17 = sub_1004DD3FC();
  [v1 addAnimation:v13 forKey:v17];
}

void sub_10034A5C8(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = sub_1004DD3FC();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v41[0] = v39;
    v41[1] = v40;
    if (*(&v40 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1002DFAAC(v41);
    }

    v12 = sub_1004DD3FC();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = sub_1004DDB7C().super.super.isa;
    [v14 setFromValue:isa];

    v16 = sub_1004DDB7C().super.super.isa;
    [v14 setToValue:v16];

    v17 = sub_1004DD3FC();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = sub_1004D874C().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_100004CB8(&qword_100642970);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100511A20;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_100006F10(0, &unk_100640F20);
    v22 = v14;
    v23 = v18;
    v24 = sub_1004DD85C().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v38.receiver = v27;
    v38.super_class = v26;
    v29 = objc_msgSendSuper2(&v38, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v31 = sub_10034B12C;
    v31[1] = v30;
    v33 = v29;

    sub_10000DE74(v32);
    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v36 = sub_1004DD3FC();
    [v7 removeAnimationForKey:v36];

    *&v41[0] = v35;
    *(&v41[0] + 1) = v34;

    v42._countAndFlagsBits = 0x676E69646E65;
    v42._object = 0xE600000000000000;
    sub_1004DD5FC(v42);
    v37 = sub_1004DD3FC();

    [v7 addAnimation:v25 forKey:v37];
  }
}

uint64_t sub_10034AA9C()
{

  return swift_deallocObject();
}

void sub_10034AB08(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);

    v18._countAndFlagsBits = 0x676E69646E65;
    v18._object = 0xE600000000000000;
    sub_1004DD5FC(v18);
    v13 = sub_1004DD3FC();

    [v12 removeAnimationForKey:{v13, v16, v17}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v14 = COERCE_DOUBLE(a6(a5));
    if (v15)
    {
      v14 = a2;
    }

    [v12 setStrokeEnd:v14];
  }
}

id sub_10034AD3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034AD88()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  sub_1004DECCC();
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for CircularProgressView.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10034B070(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10034B08C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_10034B0E4()
{

  return swift_deallocObject();
}

uint64_t sub_10034B14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1004DF08C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10034B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCC0C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v64 = sub_100004CB8(&qword_1006408A8);
  __chkstk_darwin(v64);
  v69 = &v53 - v11;
  v71 = type metadata accessor for ArtworkImage.ViewModel(0);
  v12 = *(v71 - 8);
  __chkstk_darwin(v71);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v15 - 8);
  v66 = &v53 - v16;
  v67 = sub_100004CB8(&unk_100641C70);
  __chkstk_darwin(v67);
  v73 = &v53 - v17;
  v72 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v72);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v68 = &v53 - v22;
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (v23 && a1 != a2)
    {
      v56 = v10;
      v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v25 = a1 + v24;
      v26 = a2 + v24;
      v65 = (v12 + 48);
      v59 = (v5 + 48);
      v60 = v4;
      v53 = (v5 + 32);
      v54 = v7;
      v55 = (v5 + 8);
      v63 = *(v21 + 72);
      v27 = v66;
      v28 = v68;
      v61 = v14;
      v58 = v19;
      while (1)
      {
        sub_10036D7CC(v25, v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        v70 = v25;
        sub_10036D7CC(v26, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        v29 = *v28 == *v19 && v28[1] == v19[1];
        if (!v29 && (sub_1004DF08C() & 1) == 0)
        {
LABEL_32:
          sub_10036DD1C(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_10036DD1C(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v30 = v73;
        v31 = *(v72 + 20);
        v32 = *(v67 + 48);
        sub_1000108DC(v28 + v31, v73, &qword_100642C70);
        sub_1000108DC(v19 + v31, v30 + v32, &qword_100642C70);
        v33 = *v65;
        v34 = v30;
        v35 = v71;
        if ((*v65)(v34, 1, v71) == 1)
        {
          break;
        }

        v62 = v23;
        v37 = v73;
        sub_1000108DC(v73, v27, &qword_100642C70);
        if (v33(v37 + v32, 1, v35) == 1)
        {
          sub_10036DD1C(v27, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
LABEL_26:
          v51 = &unk_100641C70;
          goto LABEL_31;
        }

        v38 = v61;
        sub_10036D838(v73 + v32, v61, type metadata accessor for ArtworkImage.ViewModel);
        if ((sub_1004DCC8C() & 1) == 0)
        {
          sub_10036DD1C(v38, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v39 = *(v71 + 20);
        v40 = *(v64 + 48);
        v41 = v69;
        sub_1000108DC(v27 + v39, v69, &qword_100641A60);
        sub_1000108DC(v38 + v39, v41 + v40, &qword_100641A60);
        v42 = *v59;
        v43 = v41;
        v44 = v60;
        if ((*v59)(v43, 1, v60) == 1)
        {
          sub_10036DD1C(v38, type metadata accessor for ArtworkImage.ViewModel);
          v45 = v42(v69 + v40, 1, v44);
          v19 = v58;
          if (v45 != 1)
          {
            goto LABEL_29;
          }

          sub_10001074C(v69, &qword_100641A60);
          v27 = v66;
          sub_10036DD1C(v66, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
          v23 = v62;
          goto LABEL_18;
        }

        v46 = v69;
        v47 = v56;
        sub_1000108DC(v69, v56, &qword_100641A60);
        if (v42(v46 + v40, 1, v44) == 1)
        {
          sub_10036DD1C(v61, type metadata accessor for ArtworkImage.ViewModel);
          (*v55)(v47, v44);
          v19 = v58;
LABEL_29:
          sub_10001074C(v69, &qword_1006408A8);
          v27 = v66;
LABEL_30:
          v28 = v68;
          sub_10036DD1C(v27, type metadata accessor for ArtworkImage.ViewModel);
          v51 = &qword_100642C70;
LABEL_31:
          sub_10001074C(v73, v51);
          goto LABEL_32;
        }

        v48 = v54;
        (*v53)(v54, v46 + v40, v44);
        sub_10036BAE8(&qword_1006408B0, &type metadata accessor for Artwork.CropStyle);
        v57 = sub_1004DD35C();
        v49 = *v55;
        (*v55)(v48, v44);
        sub_10036DD1C(v61, type metadata accessor for ArtworkImage.ViewModel);
        v49(v47, v44);
        sub_10001074C(v46, &qword_100641A60);
        v27 = v66;
        sub_10036DD1C(v66, type metadata accessor for ArtworkImage.ViewModel);
        sub_10001074C(v73, &qword_100642C70);
        v19 = v58;
        v28 = v68;
        v23 = v62;
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v50 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v28 + *(v72 + 24), v19 + *(v72 + 24));
        sub_10036DD1C(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_10036DD1C(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v50)
        {
          v26 += v63;
          v25 = v70 + v63;
          if (--v23)
          {
            continue;
          }
        }

        return v50 & 1;
      }

      v36 = v33(v73 + v32, 1, v35);
      v28 = v68;
      if (v36 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_10001074C(v73, &qword_100642C70);
      goto LABEL_21;
    }

    v50 = 1;
  }

  else
  {
LABEL_33:
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t sub_10034BAF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = sub_1004DCC9C();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v6 - 8);
  v46 = &v36 - v7;
  v45 = sub_100004CB8(&qword_100641D98);
  __chkstk_darwin(v45);
  v9 = &v36 - v8;
  v44 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin(v44);
  v49 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v36 - v13);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = (v4 + 48);
    v37 = (v4 + 32);
    v38 = (v4 + 48);
    v39 = (v4 + 8);
    v43 = *(v12 + 72);
    v19 = v46;
    v20 = v47;
    while (1)
    {
      sub_10036D7CC(v16, v20, type metadata accessor for PlaylistCurators.Curator);
      v21 = v49;
      sub_10036D7CC(v17, v49, type metadata accessor for PlaylistCurators.Curator);
      v22 = *v20 == *v21 && v20[1] == v21[1];
      if (!v22 && (sub_1004DF08C() & 1) == 0)
      {
        break;
      }

      v23 = v20;
      v24 = v18;
      v25 = *(v44 + 20);
      v26 = *(v45 + 48);
      sub_1000108DC(v23 + v25, v9, &unk_100642930);
      sub_1000108DC(v49 + v25, &v9[v26], &unk_100642930);
      v27 = *v24;
      if ((*v24)(v9, 1, v48) == 1)
      {
        if (v27(&v9[v26], 1, v48) != 1)
        {
          goto LABEL_19;
        }

        v18 = v24;
        sub_10001074C(v9, &unk_100642930);
        sub_10036DD1C(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        sub_10036DD1C(v47, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v42 = v16;
        v28 = v9;
        sub_1000108DC(v9, v19, &unk_100642930);
        if (v27(&v9[v26], 1, v48) == 1)
        {
          (*v39)(v19, v48);
LABEL_19:
          sub_10001074C(v9, &qword_100641D98);
          v20 = v47;
          break;
        }

        v29 = &v9[v26];
        v30 = v40;
        v31 = v48;
        (*v37)(v40, v29, v48);
        sub_10036BAE8(&qword_100641DA0, &type metadata accessor for Artwork);
        v41 = sub_1004DD35C();
        v32 = *v39;
        v33 = v30;
        v34 = v46;
        (*v39)(v33, v31);
        v19 = v34;
        v32(v34, v31);
        sub_10001074C(v28, &unk_100642930);
        sub_10036DD1C(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        v18 = v38;
        sub_10036DD1C(v47, type metadata accessor for PlaylistCurators.Curator);
        v9 = v28;
        v16 = v42;
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      v17 += v43;
      v16 += v43;
      if (!--v14)
      {
        return 1;
      }
    }

    sub_10036DD1C(v49, type metadata accessor for PlaylistCurators.Curator);
    sub_10036DD1C(v20, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_10036AED0(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_10036AED0(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 16);
  (v10)(&v13 - v8, a1, v2, v7);
  v10(v5, v9, v2);
  sub_1004D9B2C();
  v11 = *(v3 + 8);
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t sub_10034C2D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v1);
    sub_100073E60(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1004D9B7C();
  }

  return result;
}

uint64_t sub_10034C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100004CB8(&qword_100642210);
  v5[7] = swift_task_alloc();
  v6 = sub_100004CB8(&qword_100642218);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_100004CB8(&qword_100642220);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_100004CB8(&qword_100642228);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10034C544, 0, 0);
}

uint64_t sub_10034C544()
{
  sub_1004DD05C();
  sub_1004DCDAC();
  sub_10036BAE8(&qword_100642230, &type metadata accessor for Playlist.Collaborator);
  sub_1004DC20C();
  swift_getKeyPath();
  v0[2] = sub_1004DCF4C();
  v0[3] = v1;
  sub_1004DC1FC();

  sub_1004DDA4C();
  v0[17] = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_10034C6B0, v3, v2);
}

uint64_t sub_10034C6B0()
{

  sub_100042B08(&qword_100642238, &qword_100642228);
  *(v0 + 144) = sub_1004D8D2C();

  return _swift_task_switch(sub_10034C75C, 0, 0);
}

uint64_t sub_10034C75C()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  sub_1004D8D4C();

  sub_100006F10(0, &qword_100642240);
  v6 = sub_1004DE14C();
  v0[4] = v6;
  v7 = sub_1004DE12C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100042B08(&qword_100642248, &qword_100642218);
  sub_100371824();
  sub_1004D9BDC();
  sub_10001074C(v4, &qword_100642210);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_100042B08(&qword_100642258, &qword_100642220);
  v8 = sub_1004D9C0C();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10034CA24(uint64_t a1, uint64_t a2)
{
  v244 = a1;
  v3 = sub_100004CB8(&unk_100641880);
  __chkstk_darwin(v3 - 8);
  v240 = &v206 - v4;
  v5 = sub_1004DCDAC();
  v238 = *(v5 - 8);
  __chkstk_darwin(v5);
  v252 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v237 = &v206 - v8;
  __chkstk_darwin(v9);
  v255 = &v206 - v10;
  __chkstk_darwin(v11);
  v247 = &v206 - v12;
  v249 = sub_100004CB8(&qword_100642260);
  v229 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v206 - v13;
  v227 = sub_100004CB8(&qword_100642268);
  __chkstk_darwin(v227);
  v248 = &v206 - v14;
  v220 = sub_1004D826C();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v213 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_100004CB8(&qword_100642270);
  __chkstk_darwin(v217);
  v219 = &v206 - v16;
  v226 = sub_1004DD05C();
  v225 = *(v226 - 1);
  __chkstk_darwin(v226);
  v223 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v224 = &v206 - v19;
  __chkstk_darwin(v20);
  v216 = &v206 - v21;
  v22 = sub_100004CB8(&qword_100641C40);
  __chkstk_darwin(v22 - 8);
  v214 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v206 - v25;
  __chkstk_darwin(v26);
  v222 = &v206 - v27;
  v28 = sub_100004CB8(&qword_100641C58);
  __chkstk_darwin(v28 - 8);
  v246 = &v206 - v29;
  v239 = sub_1004DCD6C();
  v234 = *(v239 - 8);
  __chkstk_darwin(v239);
  v232 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = &v206 - v32;
  v253 = sub_1004DCE1C();
  v254 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_100004CB8(&qword_100642278);
  v259 = *(v258 - 8);
  __chkstk_darwin(v258);
  v241 = &v206 - v34;
  v256 = sub_1004D966C();
  v250 = *(v256 - 8);
  __chkstk_darwin(v256);
  v242 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v231 = &v206 - v37;
  __chkstk_darwin(v38);
  v230 = &v206 - v39;
  __chkstk_darwin(v40);
  v251 = &v206 - v41;
  v236 = sub_100004CB8(&qword_100641C38);
  __chkstk_darwin(v236);
  v215 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v245 = &v206 - v44;
  __chkstk_darwin(v45);
  v47 = &v206 - v46;
  __chkstk_darwin(v48);
  v50 = &v206 - v49;
  __chkstk_darwin(v51);
  v260 = &v206 - v52;
  v53 = sub_100004CB8(&qword_100642280);
  __chkstk_darwin(v53 - 8);
  v55 = &v206 - v54;
  v56 = sub_100004CB8(&qword_100642288);
  __chkstk_darwin(v56);
  v243 = (&v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v60 = &v206 - v59;
  __chkstk_darwin(v61);
  v63 = &v206 - v62;
  __chkstk_darwin(v64);
  v66 = &v206 - v65;
  __chkstk_darwin(v67);
  v261 = &v206 - v68;
  swift_beginAccess();
  v257 = a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v70 = *(result + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v70)
    {
      v71 = sub_1004D8D3C();

      if (v71)
      {
        v212 = v5;
        sub_1000108DC(v244, v55, &qword_100642280);
        v72 = sub_100004CB8(&qword_100642290);
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v55, 1, v72) == 1)
        {
          sub_10001074C(v55, &qword_100642280);
        }

        else
        {
          v74 = sub_1004DC22C();
          (*(v73 + 8))(v55, v72);
          if (*(v74 + 16))
          {
            v75 = v258;
            (*(v259 + 16))(v261, v74 + ((*(v259 + 80) + 32) & ~*(v259 + 80)), v258);

            v76 = 0;
            v77 = v260;
            goto LABEL_10;
          }
        }

        v76 = 1;
        v77 = v260;
        v75 = v258;
LABEL_10:
        v78 = v259;
        v79 = v261;
        (*(v259 + 56))(v261, v76, 1, v75);
        sub_1000108DC(v79, v66, &qword_100642288);
        v80 = *(v78 + 48);
        v209 = v78 + 48;
        v208 = v80;
        if (v80(v66, 1, v75) == 1)
        {
          sub_10001074C(v66, &qword_100642288);
          v81 = v254;
          (*(v254 + 56))(v77, 1, 1, v253);
        }

        else
        {
          swift_getKeyPath();
          sub_1004DC12C();
          v77 = v260;

          (*(v78 + 8))(v66, v75);
          v81 = v254;
        }

        v82 = v251;
        v83 = Logger.collaboration.unsafeMutableAddressor();
        v84 = v250;
        v85 = *(v250 + 16);
        v210 = v83;
        v86 = v256;
        v244 = v250 + 16;
        v211 = v85;
        v85(v82);
        sub_1000108DC(v261, v63, &qword_100642288);
        sub_1000108DC(v77, v50, &qword_100641C38);
        v87 = sub_1004D964C();
        v207 = sub_1004DDF9C();
        if (os_log_type_enabled(v87, v207))
        {
          v88 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v263 = v206;
          *v88 = 136446466;
          sub_1000108DC(v63, v60, &qword_100642288);
          v89 = sub_1004DD4DC();
          v91 = v90;
          sub_10001074C(v63, &qword_100642288);
          v92 = sub_1002E5CC4(v89, v91, &v263);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          sub_1000108DC(v50, v47, &qword_100641C38);
          v93 = sub_1004DD4DC();
          v95 = v94;
          sub_10001074C(v50, &qword_100641C38);
          v96 = v93;
          v81 = v254;
          v97 = sub_1002E5CC4(v96, v95, &v263);

          *(v88 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v87, v207, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v88, 0x16u);
          swift_arrayDestroy();

          v86 = v256;

          v98 = *(v84 + 8);
          v98(v251, v86);
        }

        else
        {

          sub_10001074C(v50, &qword_100641C38);
          sub_10001074C(v63, &qword_100642288);
          v98 = *(v84 + 8);
          v98(v82, v86);
        }

        v99 = v259;
        v100 = v253;
        v101 = v243;
        sub_1000108DC(v261, v243, &qword_100642288);
        v102 = v258;
        v103 = v208(v101, 1, v258);
        v104 = v246;
        v105 = v245;
        if (v103 == 1)
        {
          sub_10001074C(v101, &qword_100642288);
LABEL_25:
          v121 = v242;
          v211(v242, v210, v86);
          v122 = sub_1004D964C();
          v123 = sub_1004DDF9C();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&_mh_execute_header, v122, v123, "[Management] Dismissing management sheet", v124, 2u);
          }

          v98(v121, v86);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v264 = 1;
            sub_1004D9B7C();
          }

LABEL_29:
          sub_10001074C(v260, &qword_100641C38);
          return sub_10001074C(v261, &qword_100642288);
        }

        v106 = v101;
        v107 = v241;
        (*(v99 + 32))(v241, v106, v102);
        sub_1000108DC(v260, v105, &qword_100641C38);
        v251 = *(v81 + 48);
        if ((v251)(v105, 1, v100) == 1)
        {
          (*(v99 + 8))(v107, v102);
          sub_10001074C(v105, &qword_100641C38);
          v86 = v256;
          goto LABEL_25;
        }

        v236 = v98;
        v108 = v235;
        (*(v81 + 32))(v235, v105, v100);
        sub_1004DCDEC();
        v109 = v234;
        v110 = v239;
        if ((*(v234 + 48))(v104, 1, v239) == 1)
        {
          (*(v81 + 8))(v108, v100);
          (*(v99 + 8))(v241, v258);
          sub_10001074C(v104, &qword_100641C58);
LABEL_24:
          v86 = v256;
          v98 = v236;
          goto LABEL_25;
        }

        v111 = v233;
        (*(v109 + 32))(v233, v104, v110);
        v112 = v232;
        (*(v109 + 104))(v232, enum case for Playlist.Collaborator.Status.notJoined(_:), v110);
        sub_10036BAE8(&unk_100641C60, &type metadata accessor for Playlist.Collaborator.Status);
        v113 = v109;
        v114 = sub_1004DD35C();
        v115 = v239;
        v116 = v114;
        v118 = *(v113 + 8);
        v117 = v113 + 8;
        v119 = v112;
        v120 = v118;
        v118(v119, v239);
        if (v116)
        {
          v120(v111, v115);
          (*(v254 + 8))(v235, v100);
          (*(v99 + 8))(v241, v258);
          goto LABEL_24;
        }

        v234 = v117;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v126 = v254;
        if (!Strong || (swift_getKeyPath(), swift_getKeyPath(), sub_1004D9B6C(), , , , v263 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v144 = v224;
            sub_1004DC11C();
            swift_getKeyPath();
            swift_getKeyPath();
            v145 = v225;
            v146 = v226;
            (*(v225 + 16))(v223, v144, v226);
            sub_1004D9B7C();
            (*(v145 + 8))(v144, v146);
          }

          swift_beginAccess();
          v147 = swift_weakLoadStrong();
          v148 = v248;
          if (v147)
          {
            v149 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v263) = v149 & 1;
            sub_1004D9B7C();
          }

          v226 = v120;
          v150 = v228;
          sub_1004DC13C();
          v151 = v229;
          v152 = v249;
          (*(v229 + 16))(v148, v150, v249);
          v153 = *(v227 + 36);
          v154 = sub_100042B08(&qword_100642298, &qword_100642260);
          sub_1004DDCFC();
          (*(v151 + 8))(v150, v152);
          swift_beginAccess();
          sub_1004DDD3C();
          if (*&v153[v148] == v263)
          {
            v242 = _swiftEmptyArrayStorage;
            v246 = _swiftEmptyArrayStorage;
          }

          else
          {
            v169 = v238;
            v251 = (v238 + 16);
            v170 = (v238 + 32);
            v243 = (v238 + 8);
            v232 = (v238 + 56);
            v246 = _swiftEmptyArrayStorage;
            v242 = _swiftEmptyArrayStorage;
            v245 = v153;
            do
            {
              v176 = v154;
              v177 = sub_1004DDE1C();
              v178 = *v251;
              v179 = v247;
              v180 = v212;
              (*v251)(v247);
              v177(&v263, 0);
              v154 = v176;
              sub_1004DDD4C();
              v181 = *v170;
              v182 = v255;
              (*v170)(v255, v179, v180);
              v183 = sub_1004DCD9C();
              if (v183 == 2 || (v183 & 1) == 0)
              {
                v178(v252, v182, v180);
                v188 = v246;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = sub_1003E0804(0, *(v188 + 2) + 1, 1, v188);
                }

                v190 = *(v188 + 2);
                v189 = *(v188 + 3);
                if (v190 >= v189 >> 1)
                {
                  v188 = sub_1003E0804(v189 > 1, v190 + 1, 1, v188);
                }

                *(v188 + 2) = v190 + 1;
                v191 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                v246 = v188;
                v181(&v188[v191 + *(v169 + 72) * v190], v252, v180);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v171 = sub_1004D9B5C();
                  v172 = v240;
                  v173 = v255;
                  sub_100369604(v255, v240);
                  v174 = v172;
                  v169 = v238;
                  sub_10001074C(v174, &unk_100641880);
                  v171(&v263, 0);
                  v175 = v173;
                  v154 = v176;

                  (*v243)(v175, v212);
                }

                else
                {
                  (*v243)(v255, v180);
                  v192 = v240;
                  (*v232)(v240, 1, 1, v180);
                  sub_10001074C(v192, &unk_100641880);
                }
              }

              else
              {
                v178(v237, v182, v180);
                v184 = v242;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v184 = sub_1003E0804(0, v184[2] + 1, 1, v184);
                }

                v242 = v184;
                v186 = v184[2];
                v185 = v184[3];
                if (v186 >= v185 >> 1)
                {
                  v242 = sub_1003E0804(v185 > 1, v186 + 1, 1, v242);
                }

                (*(v169 + 8))(v182, v180);
                v187 = v242;
                *(v242 + 2) = v186 + 1;
                v181(v187 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v186, v237, v180);
              }

              v148 = v248;
              sub_1004DDD3C();
            }

            while (*&v245[v148] != v263);
          }

          sub_10001074C(v148, &qword_100642268);
          swift_beginAccess();
          v155 = swift_weakLoadStrong();
          v156 = v246;
          if (v155)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[1] = v156;

            sub_1004D9B7C();
          }

          swift_beginAccess();
          v157 = swift_weakLoadStrong();
          v158 = v230;
          v159 = v242;
          if (v157)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[0] = v159;

            sub_1004D9B7C();
          }

          v160 = v256;
          v211(v158, v210, v256);

          v161 = sub_1004D964C();
          v162 = sub_1004DDF6C();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v262[0] = v164;
            *v163 = 136315138;
            v165 = sub_1004DD88C();
            v167 = v166;

            v168 = sub_1002E5CC4(v165, v167, v262);

            *(v163 + 4) = v168;
            _os_log_impl(&_mh_execute_header, v161, v162, "[Management] pendingCollaborators=%s", v163, 0xCu);
            sub_100008D24(v164);
          }

          else
          {
          }

          v193 = v158;
          v194 = v236;
          v236(v193, v160);
          v195 = v231;
          v211(v231, v210, v160);

          v196 = sub_1004D964C();
          v197 = sub_1004DDF6C();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = v195;
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v262[0] = v200;
            *v199 = 136315138;
            v201 = sub_1004DD88C();
            v202 = v194;
            v204 = v203;

            v205 = sub_1002E5CC4(v201, v204, v262);

            *(v199 + 4) = v205;
            _os_log_impl(&_mh_execute_header, v196, v197, "[Management] activeCollaborators=%s", v199, 0xCu);
            sub_100008D24(v200);

            v202(v198, v256);
          }

          else
          {

            v194(v195, v160);
          }

          (v226)(v233, v239);
          (*(v254 + 8))(v235, v253);
          (*(v259 + 8))(v241, v258);
          goto LABEL_29;
        }

        swift_beginAccess();
        v127 = swift_weakLoadStrong();
        v128 = v218;
        v129 = v221;
        if (v127)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v130 = v216;
          sub_1004D9B6C();

          v131 = v215;
          sub_1004DCE2C();
          (*(v225 + 8))(v130, v226);
          if ((v251)(v131, 1, v100) != 1)
          {
            v132 = v222;
            sub_1004DCE0C();
            (*(v126 + 8))(v131, v100);
            v133 = v220;
LABEL_38:
            sub_1004DCE0C();
            v134 = *(v217 + 48);
            v135 = v219;
            sub_1000108DC(v132, v219, &qword_100641C40);
            sub_1000108DC(v129, v135 + v134, &qword_100641C40);
            v136 = v128;
            v137 = *(v128 + 48);
            if (v137(v135, 1, v133) == 1)
            {
              sub_10001074C(v129, &qword_100641C40);
              sub_10001074C(v132, &qword_100641C40);
              if (v137(v135 + v134, 1, v133) == 1)
              {
                sub_10001074C(v135, &qword_100641C40);
                goto LABEL_47;
              }
            }

            else
            {
              v138 = v214;
              sub_1000108DC(v135, v214, &qword_100641C40);
              if (v137(v135 + v134, 1, v133) != 1)
              {
                v139 = v135 + v134;
                v140 = v213;
                (*(v136 + 32))(v213, v139, v133);
                sub_10036BAE8(&qword_1006422A0, &type metadata accessor for Date);
                v141 = v138;
                v142 = sub_1004DD35C();
                v143 = *(v136 + 8);
                v143(v140, v133);
                sub_10001074C(v221, &qword_100641C40);
                sub_10001074C(v222, &qword_100641C40);
                v143(v141, v133);
                sub_10001074C(v135, &qword_100641C40);
                if (v142)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v263) = 0;
                  sub_1004D9B7C();
                }

                goto LABEL_47;
              }

              sub_10001074C(v221, &qword_100641C40);
              sub_10001074C(v222, &qword_100641C40);
              (*(v136 + 8))(v138, v133);
            }

            sub_10001074C(v135, &qword_100642270);
            goto LABEL_44;
          }

          sub_10001074C(v131, &qword_100641C38);
        }

        v132 = v222;
        v133 = v220;
        (*(v128 + 56))(v222, 1, 1, v220);
        goto LABEL_38;
      }
    }
  }

  return result;
}

uint64_t sub_10034EF30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();
}

uint64_t sub_10034EFA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();
}

uint64_t sub_10034F024(uint64_t a1)
{
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_1004D9B7C();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10034F1E4()
{
  v0 = sub_1004DCD6C();
  v33 = *(v0 - 8);
  __chkstk_darwin(v0);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100004CB8(&qword_100641C50);
  __chkstk_darwin(v34);
  v3 = &v30 - v2;
  v4 = sub_1004DD05C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100641C38);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100004CB8(&qword_100641C58);
  __chkstk_darwin(v11 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004DCE2C();
  (*(v5 + 8))(v7, v4);
  v19 = sub_1004DCE1C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_10001074C(v10, &qword_100641C38);
    v21 = v33;
    (*(v33 + 56))(v18, 1, 1, v0);
  }

  else
  {
    sub_1004DCDEC();
    (*(v20 + 8))(v10, v19);
    v21 = v33;
  }

  (*(v21 + 104))(v15, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v21 + 56))(v15, 0, 1, v0);
  v22 = *(v34 + 48);
  sub_1000108DC(v18, v3, &qword_100641C58);
  sub_1000108DC(v15, &v3[v22], &qword_100641C58);
  v23 = *(v21 + 48);
  if (v23(v3, 1, v0) != 1)
  {
    v25 = v32;
    sub_1000108DC(v3, v32, &qword_100641C58);
    if (v23(&v3[v22], 1, v0) != 1)
    {
      v26 = v31;
      (*(v21 + 32))(v31, &v3[v22], v0);
      sub_10036BAE8(&unk_100641C60, &type metadata accessor for Playlist.Collaborator.Status);
      v27 = v25;
      v24 = sub_1004DD35C();
      v28 = *(v21 + 8);
      v28(v26, v0);
      sub_10001074C(v15, &qword_100641C58);
      sub_10001074C(v18, &qword_100641C58);
      v28(v27, v0);
      sub_10001074C(v3, &qword_100641C58);
      return v24 & 1;
    }

    sub_10001074C(v15, &qword_100641C58);
    sub_10001074C(v18, &qword_100641C58);
    (*(v21 + 8))(v25, v0);
    goto LABEL_9;
  }

  sub_10001074C(v15, &qword_100641C58);
  sub_10001074C(v18, &qword_100641C58);
  if (v23(&v3[v22], 1, v0) != 1)
  {
LABEL_9:
    sub_10001074C(v3, &qword_100641C50);
    v24 = 0;
    return v24 & 1;
  }

  sub_10001074C(v3, &qword_100641C58);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10034F820()
{
  v0 = sub_1004DD05C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v6[15] == 1 && (sub_10034FF40() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v4 = sub_1004DCEFC();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_10034F998()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    sub_1002ED7DC(v1);
  }

  return v1;
}

uint64_t sub_10034FAFC()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1004DD3CC();
  __chkstk_darwin(v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v9 = *(v16 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10 = *(v16 + 16);

  if (v10 == 1)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1004DD3BC();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_1004DD3AC(v17);
    v16 = v9;
    sub_1004DD38C();
    v11._countAndFlagsBits = 0xD000000000000012;
    v11._object = 0x80000001004F6860;
  }

  else
  {
    sub_1004DD3BC();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_1004DD3AC(v18);
    v16 = v10;
    sub_1004DD38C();
    if (v9)
    {
      v19._countAndFlagsBits = 0x2064656E696F6A20;
      v19._object = 0xAC00000020A280E2;
      sub_1004DD3AC(v19);
      v16 = v9;
      sub_1004DD38C();
      v11._countAndFlagsBits = 0x676E69646E657020;
      v11._object = 0xE800000000000000;
    }

    else
    {
      v11._object = 0x80000001004F6840;
      v11._countAndFlagsBits = 0xD000000000000011;
    }
  }

  sub_1004DD3AC(v11);
  sub_1004DD3DC();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v13 = qword_1006734A0;
  sub_1004D838C();
  v12 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v12;
}

uint64_t sub_10034FF40()
{
  v0 = sub_1004DD05C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_100641C38);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_100004CB8(&qword_100641C40);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1004D826C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v22 = &v22 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004DCE2C();
  (*(v1 + 8))(v3, v0);
  v15 = sub_1004DCE1C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_10001074C(v6, &qword_100641C38);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_1004DCE0C();
    (*(v16 + 8))(v6, v15);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v18 = v22;
      (*(v11 + 32))(v22, v9, v10);
      v19 = v23;
      sub_1004D825C();
      v17 = sub_1004D81DC();
      v20 = *(v11 + 8);
      v20(v19, v10);
      v20(v18, v10);
      return v17 & 1;
    }
  }

  sub_10001074C(v9, &qword_100641C40);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100350310()
{
  v1 = v0;
  v2 = sub_1004DD3CC();
  __chkstk_darwin(v2 - 8);
  v68 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D84CC();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D7D4C();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D83FC();
  __chkstk_darwin(v8 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DD3EC();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v66 - v13;
  v14 = sub_1004DD05C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v66 - v18;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = sub_100004CB8(&qword_100641C38);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = sub_100004CB8(&qword_100641C40);
  __chkstk_darwin(v25 - 8);
  v27 = &v66 - v26;
  v28 = sub_1004D826C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v75 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v84 = &v66 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v1;
  sub_1004D9B6C();

  sub_1004DCE2C();
  v33 = *(v15 + 8);
  v82 = v14;
  v33(v21, v14);
  v34 = sub_1004DCE1C();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    sub_10001074C(v24, &qword_100641C38);
    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_4:
    sub_10001074C(v27, &qword_100641C40);
    return 0;
  }

  sub_1004DCE0C();
  (*(v35 + 8))(v24, v34);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v29 + 32);
  v66 = v28;
  v37(v84, v27, v28);
  v38 = v29;
  if (sub_10034FF40() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v39 = v69, sub_1004D9B6C(), , , v40 = sub_1004DCEFC(), v33(v39, v82), v40 != 2) && (v40)
  {
    v41 = v72;
    sub_1004DD37C();
    v43 = v73;
    v42 = v74;
    (*(v73 + 16))(v70, v41, v74);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v44 = qword_1006734A0;
    sub_1004D838C();
    v45 = sub_1004DD4AC();
    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v84, v66);
  }

  else
  {
    v46 = v76;
    sub_1004D845C();
    sub_100004CB8(&qword_100641C48);
    v47 = sub_1004D84BC();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100511DA0;
    (*(v48 + 104))(v50 + v49, enum case for Calendar.Component.day(_:), v47);
    sub_1002E86BC(v50);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v47);
    swift_deallocClassInstance();
    v51 = v75;
    sub_1004D825C();
    v52 = v79;
    v53 = v84;
    sub_1004D844C();

    v54 = *(v38 + 8);
    v55 = v66;
    v54(v51, v66);
    (*(v77 + 8))(v46, v78);
    v56 = sub_1004D7D1C();
    if (v57)
    {
      (*(v80 + 8))(v52, v81);
      v54(v53, v55);
      return 0;
    }

    v58 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v67;
    sub_1004D9B6C();

    v60 = sub_1004DCEFC();
    v33(v59, v82);
    if (v60 == 2 || (v60 & 1) == 0)
    {
      sub_1004DD3BC();
      v87._object = 0x80000001004F6740;
      v87._countAndFlagsBits = 0xD000000000000010;
      sub_1004DD3AC(v87);
      v85 = v58;
      sub_1004DD38C();
      v61._countAndFlagsBits = 0x2E29732879616420;
      v61._object = 0xE800000000000000;
    }

    else
    {
      sub_1004DD3BC();
      v86._object = 0x80000001004F6740;
      v86._countAndFlagsBits = 0xD000000000000010;
      sub_1004DD3AC(v86);
      v85 = v58;
      sub_1004DD38C();
      v61._countAndFlagsBits = 0xD00000000000006CLL;
      v61._object = 0x80000001004F6760;
    }

    sub_1004DD3AC(v61);
    v62 = v72;
    sub_1004DD3DC();
    v64 = v73;
    v63 = v74;
    (*(v73 + 16))(v70, v62, v74);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v65 = qword_1006734A0;
    sub_1004D838C();
    v45 = sub_1004DD4AC();
    (*(v64 + 8))(v62, v63);
    (*(v80 + 8))(v52, v81);
    v54(v53, v66);
  }

  return v45;
}

uint64_t sub_100350E84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100641C38);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (sub_10034FF40())
  {
    v9 = sub_1004D809C();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    sub_1004DCE2C();
    (*(v3 + 8))(v5, v2);
    v12 = sub_1004DCE1C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_10001074C(v8, &qword_100641C38);
      v14 = sub_1004D809C();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    else
    {
      sub_1004DCDBC();
      return (*(v13 + 8))(v8, v12);
    }
  }
}

uint64_t sub_100351138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004CB8(&qword_100641068);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_1000108DC(v1 + v9, v8, &qword_100641068);
  v10 = sub_100004CB8(&qword_100642C70);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100047F38(v8, a1, &qword_100642C70);
  }

  sub_10001074C(v8, &qword_100641068);
  sub_100351348(a1);
  sub_1000108DC(a1, v5, &qword_100642C70);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1000107AC(v5, v1 + v9, &qword_100641068);
  return swift_endAccess();
}

uint64_t sub_100351348@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1004DD05C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004DD03C();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_10001074C(v3, &unk_100642930);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_1004DCB8C();
    (*(v9 + 8))(v11, v8);
    v17 = sub_1004DCC0C();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_10035169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = sub_1004DD05C();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100351760, 0, 0);
}

uint64_t sub_100351760()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100351868;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_100351868()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003722E8;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_100351A24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100351A24()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100351A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004DD05C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100351B64, 0, 0);
}

uint64_t sub_100351B64()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100351C68;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_100351C68()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100351E64;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100351DFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100351DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100351E64()
{
  v0[10] = *(v0[2] + 16);
  sub_1004DDA4C();

  v0[11] = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_100351F0C, v2, v1);
}

uint64_t sub_100351F0C()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100351F88, 0, 0);
}

uint64_t sub_100351F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100351FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004DD05C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1004D809C();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100352114, 0, 0);
}

uint64_t sub_100352114()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10035221C;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_10035221C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_10035242C;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_1003523C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003523C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035242C()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_1004D9B7C();
  *(v0 + 96) = *(v1 + 16);
  sub_1004DDA4C();

  *(v0 + 104) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_100352520, v3, v2);
}

uint64_t sub_100352520()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_10035259C, 0, 0);
}

uint64_t sub_10035259C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352610(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_100004CB8(&unk_100641880);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = sub_1004DCDAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  sub_1000108DC(a1, v7, &unk_100641880);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001074C(v7, &unk_100641880);
    result = sub_1004DECCC();
    __break(1u);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v16 = sub_1004DDA8C();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    (*(v9 + 16))(v11, v14, v8);
    v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v20[1];
    v15(&v18[v17], v11, v8);

    sub_100302950(0, 0, v4, &unk_10052EA50, v18);

    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_100352954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1004DD05C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100352A20, 0, 0);
}

uint64_t sub_100352A20()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100352B28;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_100352B28()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_100352D24;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100352CBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100352CBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352D24()
{
  v0[11] = *(v0[2] + 16);
  sub_1004DDA4C();

  v0[12] = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_100352DCC, v2, v1);
}

uint64_t sub_100352DCC()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100352E48, 0, 0);
}

uint64_t sub_100352E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352EB8(uint64_t a1, int a2)
{
  v21 = a1;
  v23 = a2;
  v3 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v3 - 8);
  v22 = &v20 - v4;
  v5 = sub_1004DCDAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = *(v6 + 16);
  v13(v8, a1, v5, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_1004D9B5C();
  sub_10036A464(v12, v8);
  (*(v6 + 8))(v12, v5);
  v14(v24, 0);

  v15 = sub_1004DDA8C();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  (v13)(v12, v21, v5);
  v17 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v20;
  *(v18 + 40) = v23 & 1;
  (*(v6 + 32))(v18 + v17, v12, v5);

  sub_100302950(0, 0, v16, &unk_10052EA28, v18);
}

uint64_t sub_10035318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_1004DCDAC();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_100004CB8(&qword_100643620);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_1004DD05C();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1003532EC, 0, 0);
}

uint64_t sub_1003532EC()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B6C();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1003533FC;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_1003533FC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1003535E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1003535E8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_1004DDA8C();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  sub_1004DDA4C();

  v8 = sub_1004DDA3C();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_100302F64(0, 0, v1, &unk_10052EA38, v10);

  v0[15] = *(v6 + 16);

  v0[16] = sub_1004DDA3C();
  v12 = sub_1004DD9BC();

  return _swift_task_switch(sub_1003537A8, v12, v11);
}

uint64_t sub_1003537A8()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100353824, 0, 0);
}

uint64_t sub_100353824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003538A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_1004DDA4C();
  v5[9] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_10035393C, v7, v6);
}

uint64_t sub_10035393C()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1004D9B5C();
  sub_100369604(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_100004CB8(&qword_100641008);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_100004CB8(&qword_100641020);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_100004CB8(&qword_100641030);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_100004CB8(&qword_100641040);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_10001074C(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_100641068);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100353CA8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = sub_1004D9AFC();
  *a1 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBD0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_100004CB8(&unk_100641090);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_100004CB8(&unk_10063DBE0);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  sub_100004CB8(&qword_1006410A0);
  sub_1004DB9DC();
  *(a1 + v6) = v13;
  v7 = a1 + v2[9];
  sub_1004DB9DC();
  *v7 = v13;
  *(v7 + 1) = *(&v13 + 1);
  v8 = a1 + v2[10];
  sub_1004DB9DC();
  *v8 = v13;
  *(v8 + 1) = *(&v13 + 1);
  v9 = a1 + v2[11];
  sub_1004DB9DC();
  *v9 = v13;
  *(v9 + 1) = *(&v13 + 1);
  v10 = a1 + v2[12];
  sub_1004DB9DC();
  *v10 = v13;
  *(v10 + 1) = *(&v13 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10036BAE8(&qword_1006410A8, type metadata accessor for Collaboration.Management.Model);
  result = sub_1004DA13C();
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet()
{
  sub_100004CB8(&qword_1006410A0);
  sub_1004DB9DC();
  return v1;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel()
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10036BAE8(&qword_1006410A8, type metadata accessor for Collaboration.Management.Model);

  return sub_1004DA13C();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100004CB8(&qword_1006410B0);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v27 = v2;
  v22[1] = sub_100004CB8(&qword_1006410B8);
  v9 = sub_100008DE4(&qword_1006410C0);
  v10 = sub_100008DE4(&qword_1006410C8);
  v11 = sub_100008DE4(&qword_1006410D0);
  v12 = sub_1004DAB7C();
  v13 = sub_10036B8C8();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_100008DE4(&qword_100641100);
  v16 = sub_100042B08(&qword_100641108, &qword_100641100);
  v28 = v15;
  v29 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = v9;
  v29 = v10;
  v30 = OpaqueTypeConformance2;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1004DA33C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_10036D7CC(v2, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_10036D838(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_100042B08(&unk_100641110, &qword_1006410B0);
  v20 = v24;
  sub_1004DB70C();

  return (*(v25 + 8))(v8, v20);
}

uint64_t sub_1003543CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1004DAB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_1006410D0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v25 = sub_100004CB8(&qword_1006410C0);
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v24 = a1;
  v27 = a1;
  sub_100004CB8(&qword_100641DA8);
  sub_100042B08(&qword_100641DB0, &qword_100641DA8);
  sub_1004DB12C();
  KeyPath = swift_getKeyPath();
  if (qword_10063D990 != -1)
  {
    v22 = KeyPath;
    swift_once();
    KeyPath = v22;
  }

  v14 = qword_100640F48;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_1004DAB6C();
  v16 = sub_10036B8C8();
  sub_1004DB76C();
  (*(v4 + 8))(v6, v3);
  v17 = sub_10001074C(v9, &qword_1006410D0);
  __chkstk_darwin(v17);
  *(&v23 - 2) = v24;
  sub_100004CB8(&qword_1006410C8);
  v28 = v7;
  v29 = v3;
  v30 = v16;
  v31 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v18 = sub_100008DE4(&qword_100641100);
  v19 = sub_100042B08(&qword_100641108, &qword_100641100);
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_1004DB6DC();
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_1003547CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v166 = sub_100004CB8(&qword_100641DC8);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v131 = &v130 - v3;
  v162 = sub_1004DD05C();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_100641DD0);
  __chkstk_darwin(v5 - 8);
  v167 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v164 = &v130 - v8;
  v9 = sub_100004CB8(&qword_100641DD8);
  v171 = *(v9 - 8);
  v172 = v9;
  __chkstk_darwin(v9);
  v139 = &v130 - v10;
  v138 = sub_100004CB8(&qword_100641DE0);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v151 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v150 = &v130 - v13;
  v135 = sub_100004CB8(&qword_100641DE8);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v130 - v14;
  v15 = sub_100004CB8(&qword_100641DF0);
  __chkstk_darwin(v15 - 8);
  v136 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = &v130 - v18;
  v19 = sub_1004D83FC();
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1004DD3EC();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v169 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v130 - v23;
  v148 = sub_100004CB8(&qword_100641DF8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v152 = &v130 - v26;
  v147 = sub_1004DCDAC();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v143 = &v130 - v29;
  v30 = sub_100004CB8(&qword_100641E00);
  __chkstk_darwin(v30 - 8);
  v163 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v175 = &v130 - v33;
  v156 = sub_1004D9CCC();
  v34 = *(v156 - 8);
  __chkstk_darwin(v156);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_100004CB8(&qword_100641E08);
  __chkstk_darwin(v173);
  v38 = &v130 - v37;
  v154 = sub_100004CB8(&qword_100641E10);
  v155 = *(v154 - 8);
  __chkstk_darwin(v154);
  v40 = &v130 - v39;
  v159 = sub_100004CB8(&qword_100641E18);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v130 - v43;
  v174 = a1;
  v176 = a1;
  sub_10035881C(a1, v38);
  v153 = sub_100004CB8(&qword_100641E20);
  v45 = sub_100008DE4(&qword_100641E28);
  v46 = sub_100008DE4(&qword_100641E30);
  v47 = sub_10036FB78();
  v48 = sub_10036FC5C(&qword_100641E60, &qword_100641E30, &unk_10052EE08, sub_10036FCD8);
  v177 = v45;
  v178 = v46;
  v179 = v47;
  v180 = v48;
  swift_getOpaqueTypeConformance2();
  sub_10036FE1C();
  sub_1004DBC6C();
  v49 = v156;
  (*(v34 + 104))(v36, enum case for Prominence.increased(_:), v156);
  sub_10036FECC();
  v173 = v44;
  v50 = v154;
  sub_1004DB4FC();
  v51 = v36;
  v52 = v175;
  (*(v34 + 8))(v51, v49);
  (*(v155 + 8))(v40, v50);
  v53 = *(v174 + 8);
  v54 = sub_10034F1E4();
  v56 = v171;
  v55 = v172;
  if ((v54 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (!*(v177 + 16))
  {

    v52 = v175;
    v56 = v171;
    v55 = v172;
LABEL_9:
    (*(v56 + 56))(v52, 1, 1, v55);
    v79 = v164;
    v80 = v170;
    goto LABEL_11;
  }

  v57 = v145;
  v58 = v133;
  v59 = v147;
  (*(v145 + 16))(v133, v177 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v147);

  v60 = (*(v57 + 32))(v143, v58, v59);
  __chkstk_darwin(v60);
  v61 = v170;
  sub_1004DD37C();
  v62 = v140;
  v63 = v142;
  (*(v140 + 16))(v169, v61, v142);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v64 = qword_1006734A0;
  sub_1004D838C();
  v65 = sub_1004DD4AC();
  v67 = v66;
  (*(v62 + 8))(v61, v63);
  v177 = v65;
  v178 = v67;
  sub_1002E6780();
  v177 = sub_1004DB34C();
  v178 = v68;
  LOBYTE(v179) = v69 & 1;
  v180 = v70;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10036BAE8(&qword_100641EF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_1004DBC6C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v156 = v53;
  if (v177 == 1)
  {
    __chkstk_darwin(v71);
    sub_100004CB8(&qword_100641F10);
    v72 = sub_100008DE4(&qword_100641F18);
    v73 = sub_100008DE4(&qword_100641F20);
    v74 = sub_1004DAB5C();
    v75 = sub_100042B08(&qword_100641F28, &qword_100641F20);
    v76 = sub_10036BAE8(&qword_100641F30, &type metadata accessor for BorderlessButtonStyle);
    v177 = v73;
    v178 = v74;
    v179 = v75;
    v180 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v177 = v72;
    v178 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v78 = v132;
    sub_1004DBC8C();
    v84 = v134;
    v82 = v149;
    v83 = v135;
    (*(v134 + 32))(v149, v78, v135);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v149;
    v83 = v135;
    v84 = v134;
  }

  v85 = (*(v84 + 56))(v82, v81, 1, v83);
  __chkstk_darwin(v85);
  sub_10035D9D0(&v177);
  sub_100004CB8(&qword_100641EF8);
  sub_10037002C();
  v86 = v150;
  sub_1004DBC6C();
  v87 = *(v146 + 16);
  v88 = v144;
  v89 = v148;
  v87(v144, v152, v148);
  v90 = v82;
  v91 = v136;
  sub_1000108DC(v90, v136, &qword_100641DF0);
  v92 = v137;
  v93 = *(v137 + 16);
  v94 = v138;
  v93(v151, v86, v138);
  v95 = v139;
  v87(v139, v88, v89);
  v96 = sub_100004CB8(&qword_100641F08);
  sub_1000108DC(v91, v95 + *(v96 + 48), &qword_100641DF0);
  v97 = v151;
  v93((v95 + *(v96 + 64)), v151, v94);
  v98 = *(v92 + 8);
  v98(v150, v94);
  sub_10001074C(v149, &qword_100641DF0);
  v99 = *(v146 + 8);
  v100 = v148;
  v99(v152, v148);
  v98(v97, v94);
  sub_10001074C(v91, &qword_100641DF0);
  v99(v144, v100);
  v52 = v175;
  sub_100047F38(v95, v175, &qword_100641DD8);
  (*(v171 + 56))(v52, 0, 1, v172);
  (*(v145 + 8))(v143, v147);
  v80 = v170;
  v79 = v164;
LABEL_11:
  v101 = v169;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v160;
  sub_1004D9B6C();

  v103 = sub_1004DCEFC();
  (*(v161 + 8))(v102, v162);
  if (v103 != 2 && (v103 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_1004D9B6C(), , v104 = , v177 == 1))
  {
    __chkstk_darwin(v104);
    sub_1004DD37C();
    v105 = v140;
    v106 = v142;
    (*(v140 + 16))(v101, v80, v142);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v107 = qword_1006734A0;
    sub_1004D838C();
    v108 = sub_1004DD4AC();
    v110 = v109;
    (*(v105 + 8))(v80, v106);
    v177 = v108;
    v178 = v110;
    sub_1002E6780();
    v181 = sub_1004DB34C();
    v182 = v111;
    v183 = v112 & 1;
    v184 = v113;
    sub_10035E318(&v177);
    sub_100004CB8(&unk_100641EC0);
    sub_100004CB8(&qword_100640078);
    sub_100042B08(&unk_100641ED0, &unk_100641EC0);
    sub_1003292D4();
    v114 = v131;
    sub_1004DBC7C();
    v115 = v165;
    v116 = v114;
    v117 = v166;
    (*(v165 + 32))(v79, v116, v166);
    v118 = v117;
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v166;
    v115 = v165;
  }

  (*(v115 + 56))(v79, v119, 1, v118);
  v120 = v158;
  v121 = *(v158 + 16);
  v122 = v157;
  v123 = v159;
  v121(v157, v173, v159);
  v124 = v163;
  sub_1000108DC(v52, v163, &qword_100641E00);
  v125 = v167;
  sub_1000108DC(v79, v167, &qword_100641DD0);
  v126 = v168;
  v121(v168, v122, v123);
  v127 = sub_100004CB8(&qword_100641EB8);
  sub_1000108DC(v124, &v126[*(v127 + 48)], &qword_100641E00);
  sub_1000108DC(v125, &v126[*(v127 + 64)], &qword_100641DD0);
  sub_10001074C(v79, &qword_100641DD0);
  sub_10001074C(v175, &qword_100641E00);
  v128 = *(v120 + 8);
  v128(v173, v123);
  sub_10001074C(v125, &qword_100641DD0);
  sub_10001074C(v124, &qword_100641E00);
  return (v128)(v122, v123);
}

uint64_t sub_100355F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100004CB8(&qword_100641EA8);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v61 - v4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100641EF8);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = sub_1004DAD1C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004CB8(&qword_1006420D8);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = sub_100004CB8(&qword_1006420E0);
  v64 = *(v18 - 8);
  v65 = v18;
  __chkstk_darwin(v18);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v23 = a1;
  if (sub_10034F1E4())
  {
    v24 = v73;
    v25 = *(v72 + 56);
    v26 = v74;

    return v25(v26, 1, 1, v24);
  }

  else
  {
    *v17 = sub_1004DA7CC();
    *(v17 + 1) = 0x4028000000000000;
    v17[16] = 0;
    v28 = sub_100004CB8(&qword_1006420E8);
    sub_1003566CC(a1, &v17[*(v28 + 44)]);
    v29 = sub_1004DAF1C();
    sub_1004D9C8C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v17[*(sub_100004CB8(&qword_1006420F0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = &v17[*(sub_100004CB8(&qword_1006420F8) + 36)];
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v40 = sub_1004DA8FC();
    v41 = &v17[*(v15 + 36)];
    *v41 = v40;
    v41[1] = sub_1003587F4;
    v41[2] = 0;
    sub_1004DAD0C();
    sub_100370D18();
    v61 = v22;
    sub_1004DB5BC();
    (*(v12 + 8))(v14, v11);
    sub_10001074C(v17, &qword_1006420D8);
    v75 = sub_10034F998();
    v42 = v23;
    v43 = v63;
    sub_10036D7CC(v42, v63, type metadata accessor for Collaboration.Management.View);
    v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v45 = swift_allocObject();
    sub_10036D838(v43, v45 + v44, type metadata accessor for Collaboration.Management.View);
    sub_100004CB8(&qword_100640FF0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_100042B08(&qword_100641F58, &qword_100640FF0);
    sub_10036BAE8(&qword_100641EF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    sub_10036BAE8(&qword_100641F60, &type metadata accessor for Playlist.Collaborator);
    v46 = v70;
    sub_1004DBC2C();
    v48 = v64;
    v47 = v65;
    v49 = *(v64 + 16);
    v50 = v69;
    v49(v69, v61, v65);
    v52 = v66;
    v51 = v67;
    v53 = *(v67 + 16);
    v54 = v46;
    v55 = v68;
    v53(v66, v54, v68);
    v49(v71, v50, v47);
    v56 = sub_100004CB8(&qword_100642128);
    v57 = v71;
    v53(&v71[*(v56 + 48)], v52, v55);
    v58 = *(v51 + 8);
    v58(v70, v55);
    v59 = *(v48 + 8);
    v59(v61, v47);
    v58(v52, v55);
    v59(v69, v47);
    v60 = v74;
    sub_100047F38(v57, v74, &qword_100641EA8);
    return (*(v72 + 56))(v60, 0, 1, v73);
  }
}

uint64_t sub_1003566CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = sub_100004CB8(&qword_100642130);
  v167 = *(v3 - 8);
  v168 = v3;
  __chkstk_darwin(v3);
  v162 = (&v138 - v4);
  v161 = sub_100004CB8(&qword_100641BC8);
  __chkstk_darwin(v161);
  v153 = &v138 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = v7;
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100004CB8(&qword_100642138);
  __chkstk_darwin(v150);
  v149 = &v138 - v8;
  v145 = sub_100004CB8(&qword_100642140);
  __chkstk_darwin(v145);
  v151 = &v138 - v9;
  v158 = sub_100004CB8(&qword_100642148);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v152 = &v138 - v10;
  v11 = sub_100004CB8(&qword_100642150);
  v159 = *(v11 - 8);
  v160 = v11;
  __chkstk_darwin(v11);
  v157 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v155 = &v138 - v14;
  v15 = sub_1004D83FC();
  __chkstk_darwin(v15 - 8);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DD3EC();
  v143 = *(v17 - 8);
  v144 = v17;
  __chkstk_darwin(v17);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v141 = &v138 - v21;
  v22 = sub_1004DD05C();
  v139 = *(v22 - 8);
  v140 = v22;
  __chkstk_darwin(v22);
  v138 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100004CB8(&qword_100642158);
  __chkstk_darwin(v24 - 8);
  v166 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v170 = &v138 - v27;
  v164 = sub_100004CB8(&qword_100642160);
  v28 = *(v164 - 8);
  __chkstk_darwin(v164);
  v30 = &v138 - v29;
  v31 = sub_1004DA25C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v138 - v36;
  v38 = sub_100004CB8(&qword_100642168);
  __chkstk_darwin(v38 - 8);
  v165 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v171 = a1;
  v172 = &v138 - v41;
  v154 = v6;
  sub_10032A4A4(v37);
  if (qword_10063D9E8 != -1)
  {
    swift_once();
  }

  v42 = sub_100035430(v31, qword_100640FA0);
  (*(v32 + 16))(v34, v42, v31);
  sub_10036BAE8(&qword_10063E998, &type metadata accessor for DynamicTypeSize);
  v43 = sub_1004DD32C();
  v44 = *(v32 + 8);
  v44(v34, v31);
  v44(v37, v31);
  if (v43)
  {
    (*(v28 + 56))(v172, 1, 1, v164);
    v45 = v19;
  }

  else
  {
    v46 = sub_1004DB8EC();
    v45 = v19;
    if (qword_10063D988 != -1)
    {
      swift_once();
    }

    v47 = qword_100640F40;
    KeyPath = swift_getKeyPath();
    v49 = qword_10063D9D8;

    if (v49 != -1)
    {
      swift_once();
    }

    sub_1004DBD1C();
    sub_1004D9F5C();
    v50 = &v30[*(sub_100004CB8(&qword_100642170) + 36)];
    v51 = *(sub_100004CB8(&qword_100642178) + 28);
    sub_1004DA93C();
    v52 = sub_1004DA94C();
    (*(*(v52 - 8) + 56))(v50 + v51, 0, 1, v52);
    *v50 = swift_getKeyPath();
    *v30 = v46;
    *(v30 + 1) = KeyPath;
    *(v30 + 2) = v47;
    *(v30 + 56) = *&v177[16];
    v53 = v176;
    *(v30 + 40) = *v177;
    *(v30 + 24) = v53;
    if (qword_10063D9E0 != -1)
    {
      swift_once();
    }

    v54 = qword_100640F98;
    v55 = swift_getKeyPath();
    v56 = v164;
    v57 = &v30[*(v164 + 36)];
    *v57 = v55;
    v57[1] = v54;
    v58 = v172;
    sub_100047F38(v30, v172, &qword_100642160);
    (*(v28 + 56))(v58, 0, 1, v56);
  }

  v164 = sub_1004DA91C();
  v59 = 1;
  LOBYTE(v176) = 1;
  v60 = v171;
  sub_100357ADC(v171, v180);
  *&v179[7] = v180[0];
  *&v179[23] = v180[1];
  *&v179[39] = v180[2];
  *&v179[55] = v180[3];
  v163 = v176;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v176 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v138;
    sub_1004D9B6C();

    v62 = sub_1004DCEFC();
    (*(v139 + 8))(v61, v140);
    if (v62 == 2 || (v62 & 1) == 0)
    {
      v63 = v141;
    }

    else
    {
      v63 = v141;
    }

    sub_1004DD37C();
    v65 = v143;
    v64 = v144;
    (*(v143 + 16))(v45, v63, v144);
    v66 = v145;
    v67 = v151;
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v68 = qword_1006734A0;
    sub_1004D838C();
    v69 = sub_1004DD4AC();
    v71 = v70;
    (*(v65 + 8))(v63, v64);
    v145 = v69;
    *&v176 = v69;
    *(&v176 + 1) = v71;
    v72 = v148;
    sub_10036D7CC(v60, v148, type metadata accessor for Collaboration.Management.View);
    v73 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v74 = swift_allocObject();
    sub_10036D838(v72, v74 + v73, type metadata accessor for Collaboration.Management.View);
    sub_1002E6780();

    v75 = v149;
    sub_1004DBA6C();
    v76 = sub_1004DAFFC();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v150 + 36));
    *v78 = v77;
    v78[1] = v76;
    sub_1004DB06C();
    sub_100371058();
    sub_1004DB3AC();
    sub_10001074C(v75, &qword_100642138);
    v79 = sub_1004DB87C();
    v80 = swift_getKeyPath();
    v81 = &v67[*(sub_100004CB8(&qword_100642198) + 36)];
    *v81 = v80;
    v81[1] = v79;
    if (qword_10063D9C8 != -1)
    {
      swift_once();
    }

    sub_1004DBD1C();
    sub_1004D9F5C();
    v82 = &v67[*(sub_100004CB8(&qword_1006421A0) + 36)];
    v83 = v180[5];
    *v82 = v180[4];
    *(v82 + 1) = v83;
    *(v82 + 2) = v180[6];
    v84 = sub_1004DAF1C();
    sub_1004D9C8C();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = &v67[*(sub_100004CB8(&qword_1006421A8) + 36)];
    *v93 = v84;
    *(v93 + 1) = v86;
    *(v93 + 2) = v88;
    *(v93 + 3) = v90;
    *(v93 + 4) = v92;
    v93[40] = 0;
    if (qword_10063D810 != -1)
    {
      swift_once();
    }

    v151 = v71;
    v94 = static UIColor.MusicTint.normal;
    v95 = sub_1004DB8CC();
    v96 = sub_1004DAF2C();
    v97 = &v67[*(sub_100004CB8(&qword_1006421B0) + 36)];
    *v97 = v95;
    v97[8] = v96;
    v98 = &v67[*(v66 + 36)];
    v99 = enum case for RoundedCornerStyle.continuous(_:);
    v100 = sub_1004DA88C();
    (*(*(v100 - 8) + 104))(v98, v99, v100);
    *&v98[*(sub_100004CB8(&qword_1006421B8) + 36)] = 256;
    v101 = v66;
    v102 = v67;
    if (qword_10063D9F0 != -1)
    {
      swift_once();
    }

    v103 = v161;
    v104 = sub_100035430(v161, qword_100640FB8);
    v105 = v153;
    sub_1000108DC(v104, v153, &qword_100641BC8);
    v150 = sub_10037113C();
    v106 = sub_100042B08(&qword_100641C00, &qword_100641BC8);
    v107 = v152;
    sub_1004DB4AC();
    sub_10001074C(v105, &qword_100641BC8);
    sub_10001074C(v102, &qword_100642140);
    v108 = (v171 + *(v154 + 11));
    v109 = *v108;
    v110 = *(v108 + 1);
    LOBYTE(v173) = v109;
    v174 = v110;
    sub_100004CB8(&qword_100640118);
    v111 = sub_1004DBA0C();
    v154 = &v138;
    __chkstk_darwin(v111);
    v112 = v145;
    *(&v138 - 4) = v113;
    *(&v138 - 3) = v112;
    *(&v138 - 2) = v151;
    *&v176 = v101;
    *(&v176 + 1) = v103;
    *v177 = v150;
    *&v177[8] = v106;
    swift_getOpaqueTypeConformance2();
    v114 = v155;
    v115 = v158;
    sub_1004DB63C();

    (*(v156 + 8))(v107, v115);
    v117 = v159;
    v116 = v160;
    v118 = *(v159 + 16);
    v119 = v157;
    v118(v157, v114, v160);
    v120 = v162;
    *v162 = 0;
    *(v120 + 8) = 1;
    v121 = sub_100004CB8(&qword_100642200);
    v118((v120 + *(v121 + 48)), v119, v116);
    v122 = *(v117 + 8);
    v122(v114, v116);
    v122(v119, v116);
    sub_100047F38(v120, v170, &qword_100642130);
    v59 = 0;
  }

  v123 = v170;
  (*(v167 + 56))(v170, v59, 1, v168);
  v124 = v172;
  v125 = v165;
  sub_1000108DC(v172, v165, &qword_100642168);
  v126 = v166;
  sub_1000108DC(v123, v166, &qword_100642158);
  v127 = v169;
  sub_1000108DC(v125, v169, &qword_100642168);
  v128 = sub_100004CB8(&qword_100642180);
  v129 = v127 + *(v128 + 48);
  v130 = v164;
  v173 = v164;
  v174 = 0;
  v131 = v163;
  v175[0] = v163;
  *&v175[1] = *v179;
  *&v175[17] = *&v179[16];
  *&v175[33] = *&v179[32];
  *&v175[49] = *&v179[48];
  v132 = *&v179[63];
  *&v175[64] = *&v179[63];
  v133 = *v175;
  *v129 = v164;
  *(v129 + 16) = v133;
  v134 = *&v175[16];
  v135 = *&v175[32];
  v136 = *&v175[48];
  *(v129 + 80) = v132;
  *(v129 + 48) = v135;
  *(v129 + 64) = v136;
  *(v129 + 32) = v134;
  sub_1000108DC(v126, v127 + *(v128 + 64), &qword_100642158);
  sub_1000108DC(&v173, &v176, &qword_100642188);
  sub_10001074C(v123, &qword_100642158);
  sub_10001074C(v124, &qword_100642168);
  sub_10001074C(v126, &qword_100642158);
  v176 = v130;
  v177[0] = v131;
  *&v177[17] = *&v179[16];
  *&v177[33] = *&v179[32];
  *v178 = *&v179[48];
  *&v178[15] = *&v179[63];
  *&v177[1] = *v179;
  sub_10001074C(&v176, &qword_100642188);
  return sub_10001074C(v125, &qword_100642168);
}

uint64_t sub_100357ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = sub_1004D83FC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004DD3EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v56[-v9];
  sub_1004DD37C();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v11 = qword_1006734A0;
  sub_1004D838C();
  v12 = sub_1004DD4AC();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  v61 = v12;
  v62 = v14;
  sub_1002E6780();
  v15 = sub_1004DB34C();
  v17 = v16;
  v19 = v18;
  LODWORD(v61) = sub_1004DABEC();
  v20 = sub_1004DB24C();
  v22 = v21;
  v24 = v23;
  sub_100051E10(v15, v17, v19 & 1);

  sub_1004DB0DC();
  v25 = sub_1004DB2AC();
  v59 = v26;
  v28 = v27;
  v30 = v29;

  sub_100051E10(v20, v22, v24 & 1);

  v31 = sub_10034FAFC();
  if (v32)
  {
    v61 = v31;
    v62 = v32;
    v33 = sub_1004DB34C();
    v35 = v34;
    v37 = v36;
    LODWORD(v61) = sub_1004DAC1C();
    v38 = sub_1004DB24C();
    v40 = v39;
    v57 = v28;
    v42 = v41;
    v60 = v30;
    sub_100051E10(v33, v35, v37 & 1);

    sub_1004DB0EC();
    v43 = sub_1004DB2AC();
    v45 = v44;
    v58 = a2;
    v46 = v25;
    v48 = v47;
    v50 = v49;

    v51 = v42 & 1;
    LOBYTE(v28) = v57;
    sub_100051E10(v38, v40, v51);
    v30 = v60;

    v52 = v48 & 1;
    v25 = v46;
    a2 = v58;
    sub_100051E00(v43, v45, v52);
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v52 = 0;
    v50 = 0;
  }

  v53 = v28 & 1;
  v54 = v59;
  sub_100051E00(v25, v59, v53);

  sub_10036DD7C(v43, v45, v52, v50);
  sub_10036DE14(v43, v45, v52, v50);
  LOBYTE(v61) = v53;
  *a2 = v25;
  *(a2 + 8) = v54;
  *(a2 + 16) = v53;
  *(a2 + 24) = v30;
  *(a2 + 32) = v43;
  *(a2 + 40) = v45;
  *(a2 + 48) = v52;
  *(a2 + 56) = v50;
  sub_10036DE14(v43, v45, v52, v50);
  sub_100051E10(v25, v54, v53);
}

uint64_t sub_100357F60(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100358108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v59 = a4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v54 = v6;
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DB7DC();
  __chkstk_darwin(v7 - 8);
  v58 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v46 - v10;
  v11 = sub_1004D83FC();
  __chkstk_darwin(v11 - 8);
  v50 = sub_1004DD3EC();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = sub_1004DD05C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v22 = sub_1004DCEFC();
  (*(v19 + 8))(v21, v18);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_1004DD37C();
    v23 = *(v12 + 16);
    v24 = v50;
    v23(v14, v17, v50);
    if (qword_10063D770 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_1004DD37C();
  v23 = *(v12 + 16);
  v24 = v50;
  v23(v14, v17, v50);
  if (qword_10063D770 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v25 = qword_1006734A0;
  sub_1004D838C();
  v26 = v25;
  v49 = sub_1004DD4AC();
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v17, v24);
  sub_1004DD37C();
  v23(v14, v17, v24);
  sub_1004D838C();
  v30 = sub_1004DD4AC();
  v32 = v31;
  v29(v17, v24);
  v60 = v49;
  v61 = v28;
  sub_1002E6780();
  v33 = sub_1004DB34C();
  v49 = v34;
  v50 = v33;
  v47 = v35;
  v48 = v36;
  v60 = v30;
  v61 = v32;
  sub_1004DB34C();
  v46[1] = v37;
  v60 = v51;
  v61 = v52;

  v38 = sub_1004DB34C();
  v40 = v39;
  LOBYTE(v28) = v41;
  v42 = v55;
  sub_10036D7CC(v56, v55, type metadata accessor for Collaboration.Management.View);
  v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v44 = swift_allocObject();
  sub_10036D838(v42, v44 + v43, type metadata accessor for Collaboration.Management.View);
  sub_1004DB7AC();
  sub_100051E10(v38, v40, v28 & 1);

  sub_1004DB7BC();
  return sub_1004DB79C();
}

uint64_t sub_10035881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100004CB8(&qword_100641E28);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  *v9 = sub_1004DA90C();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v10 = sub_100004CB8(&unk_100641F70);
  sub_100358AE8(a1, &v9[*(v10 + 44)]);
  v11 = &v9[*(v7 + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = a1 + *(v4 + 48);
  v13 = *v12;
  v14 = *(v12 + 8);
  v19 = v13;
  v20 = v14;
  sub_100004CB8(&qword_100640118);
  sub_1004DBA0C();
  sub_10036D7CC(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10036D838(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Collaboration.Management.View);
  sub_100004CB8(&qword_100641E30);
  sub_10036FB78();
  sub_10036FC5C(&qword_100641E60, &qword_100641E30, &unk_10052EE08, sub_10036FCD8);
  sub_1004DB4DC();

  return sub_10001074C(v9, &qword_100641E28);
}

uint64_t sub_100358AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v239 = sub_100004CB8(&qword_100641F88);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v217 = &v195 - v3;
  v4 = sub_100004CB8(&qword_100641F90);
  __chkstk_darwin(v4 - 8);
  v200 = &v195 - v5;
  v197 = sub_100004CB8(&qword_100641F98);
  __chkstk_darwin(v197);
  v209 = &v195 - v6;
  v207 = sub_100004CB8(&qword_100641FA0);
  __chkstk_darwin(v207);
  v206 = &v195 - v7;
  v204 = sub_100004CB8(&qword_100641FA8);
  __chkstk_darwin(v204);
  v203 = &v195 - v8;
  v199 = sub_100004CB8(&qword_100641FB0);
  __chkstk_darwin(v199);
  v202 = &v195 - v9;
  v198 = sub_100004CB8(&qword_100641FB8);
  __chkstk_darwin(v198);
  v205 = &v195 - v10;
  v201 = sub_100004CB8(&qword_100641FC0);
  __chkstk_darwin(v201);
  v212 = &v195 - v11;
  v211 = sub_100004CB8(&qword_100641FC8);
  __chkstk_darwin(v211);
  v216 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v210 = &v195 - v14;
  __chkstk_darwin(v15);
  v215 = &v195 - v16;
  v196 = sub_100004CB8(&qword_100641FD0);
  __chkstk_darwin(v196);
  v214 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = (&v195 - v19);
  v20 = sub_100004CB8(&qword_100641FD8);
  __chkstk_darwin(v20 - 8);
  v237 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v242 = &v195 - v23;
  v235 = sub_1004DD05C();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v25 - 8);
  v227 = &v195 - v26;
  v230 = sub_1004DCC0C();
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v226 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v28 - 8);
  v220 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v219 = &v195 - v31;
  v231 = sub_1004D934C();
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v244 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v222 = &v195 - v34;
  __chkstk_darwin(v35);
  v225 = &v195 - v36;
  __chkstk_darwin(v37);
  v224 = &v195 - v38;
  v39 = sub_1004D92BC();
  v246 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ArtworkImage.Placeholder(0);
  v243 = *(v42 - 8);
  v43 = *(v243 + 8);
  __chkstk_darwin(v42 - 8);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v195 - v46;
  v48 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v48 - 8);
  v218 = &v195 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v195 - v51;
  __chkstk_darwin(v53);
  v55 = &v195 - v54;
  v232 = sub_100004CB8(&qword_100641FE0);
  __chkstk_darwin(v232);
  v236 = &v195 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = &v195 - v58;
  v208 = a1;
  v247 = *(a1 + 8);
  sub_100351138(v55);
  v59 = enum case for Playlist.Variant.regular(_:);
  v60 = sub_1004DCEEC();
  v61 = *(v60 - 8);
  (*(v61 + 104))(v47, v59, v60);
  (*(v61 + 56))(v47, 0, 1, v60);
  v62 = sub_100004CB8(&unk_100641A80);
  (*(*(v62 - 8) + 56))(v47, 0, 11, v62);
  v262 = 1;
  v260 = 1;
  v258 = 1;
  v63 = *(v246 + 104);
  v245 = v41;
  v223 = v39;
  v63(v41, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v39);
  v221 = v47;
  sub_10036D7CC(v47, v44, type metadata accessor for ArtworkImage.Placeholder);
  v64 = (v243[80] + 16) & ~v243[80];
  v65 = (v43 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_10036D838(v44, v66 + v64, type metadata accessor for ArtworkImage.Placeholder);
  v67 = v66 + v65;
  *v67 = 0;
  *(v67 + 8) = v262;
  *(v67 + 9) = *v261;
  *(v67 + 12) = *&v261[3];
  *(v67 + 16) = 0;
  *(v67 + 24) = v260;
  *(v67 + 25) = *v259;
  *(v67 + 28) = *&v259[3];
  *(v67 + 32) = 0;
  *(v67 + 40) = v258;
  *(v67 + 41) = 2;
  v243 = v55;
  sub_1000108DC(v55, v52, &qword_100642C70);
  v68 = type metadata accessor for ArtworkImage.ViewModel(0);
  v69 = *(*(v68 - 8) + 48);
  if (v69(v52, 1, v68) == 1)
  {
    sub_10001074C(v52, &qword_100642C70);
    v70 = sub_1004DCC9C();
    v71 = v219;
    (*(*(v70 - 8) + 56))(v219, 1, 1, v70);
  }

  else
  {
    v72 = sub_1004DCC9C();
    v73 = *(v72 - 8);
    v71 = v219;
    (*(v73 + 16))(v219, v52, v72);
    sub_10036DD1C(v52, type metadata accessor for ArtworkImage.ViewModel);
    (*(v73 + 56))(v71, 0, 1, v72);
  }

  sub_1000108DC(v71, v220, &unk_100642930);
  v74 = v224;
  sub_1004D933C();
  sub_10001074C(v71, &unk_100642930);
  sub_1004D92EC();
  v75 = v218;
  sub_1000108DC(v243, v218, &qword_100642C70);
  if (v69(v75, 1, v68) == 1)
  {
    sub_10001074C(v75, &qword_100642C70);
    v76 = v228;
    v77 = v227;
    v78 = v230;
    (*(v228 + 56))(v227, 1, 1, v230);
    v79 = v241;
  }

  else
  {
    v77 = v227;
    sub_1000108DC(v75 + *(v68 + 20), v227, &qword_100641A60);
    sub_10036DD1C(v75, type metadata accessor for ArtworkImage.ViewModel);
    v76 = v228;
    v78 = v230;
    v80 = (*(v228 + 48))(v77, 1, v230);
    v79 = v241;
    if (v80 != 1)
    {
      v81 = v226;
      (*(v76 + 32))(v226, v77, v78);
      goto LABEL_12;
    }
  }

  v81 = v226;
  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v82 = sub_100035430(v78, static Artwork.CropStyle.fallback);
  (*(v76 + 16))(v81, v82, v78);
  if ((*(v76 + 48))(v77, 1, v78) != 1)
  {
    sub_10001074C(v77, &qword_100641A60);
  }

LABEL_12:
  v83 = v222;
  v84 = v244;
  sub_1004D92CC();
  (*(v76 + 8))(v81, v78);
  v85 = *(v229 + 8);
  v86 = v231;
  v85(v84, v231);
  v87 = v225;
  sub_1004D92FC();
  v85(v83, v86);
  sub_100004CB8(&qword_1006406E8);
  sub_100338428();
  sub_1004D92DC();

  v85(v87, v86);
  v85(v74, v86);
  (*(v246 + 8))(v245, v223);
  sub_10036DD1C(v221, type metadata accessor for ArtworkImage.Placeholder);
  sub_10001074C(v243, &qword_100642C70);
  if (qword_10063D9D0 != -1)
  {
    swift_once();
  }

  sub_1004DBD1C();
  sub_1004D9F5C();
  v88 = (v79 + *(sub_100004CB8(&qword_100641FE8) + 36));
  v89 = v249;
  *v88 = v248;
  v88[1] = v89;
  v88[2] = v250;
  if (qword_10063D8F0 != -1)
  {
    swift_once();
  }

  v90 = static Corner.small;
  v91 = *algn_100673838;
  v92 = byte_100673840;
  v93 = v79 + *(sub_100004CB8(&qword_100641FF0) + 36);
  *v93 = v90;
  *(v93 + 8) = v91;
  *(v93 + 16) = v92;
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  v94 = static Border.artwork;
  v95 = qword_100673898;
  v96 = byte_1006738A0;
  v97 = v79 + *(sub_100004CB8(&qword_100641FF8) + 36);
  *v97 = v94;
  *(v97 + 8) = v95;
  *(v97 + 16) = v96;
  *(v97 + 24) = v90;
  *(v97 + 32) = v91;
  *(v97 + 40) = v92;

  sub_1004DB84C();
  v98 = sub_1004DB88C();

  v99 = v79 + *(v232 + 36);
  *v99 = v98;
  *(v99 + 8) = xmmword_1005271F0;
  *(v99 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v233;
  sub_1004D9B6C();

  v101 = sub_1004DCF6C();
  v103 = v102;
  (*(v234 + 8))(v100, v235);
  *&v251 = v101;
  *(&v251 + 1) = v103;
  sub_1002E6780();
  v104 = sub_1004DB34C();
  v106 = v105;
  v108 = v107;
  LODWORD(v251) = sub_1004DABEC();
  v109 = sub_1004DB24C();
  v111 = v110;
  v113 = v112;
  sub_100051E10(v104, v106, v108 & 1);

  if (qword_10063D980 != -1)
  {
    swift_once();
  }

  v114 = sub_1004DB2AC();
  v116 = v115;
  v118 = v117;

  sub_100051E10(v109, v111, v113 & 1);

  sub_1004DB06C();
  v245 = sub_1004DB23C();
  v244 = v119;
  LODWORD(v121) = v120;
  v246 = v122;
  sub_100051E10(v114, v116, v118 & 1);

  v123 = sub_10034F820();
  v124 = 1;
  if (v123)
  {
    v125 = sub_1004DA7BC();
    v126 = v213;
    *v213 = v125;
    *(v126 + 8) = 0x4020000000000000;
    *(v126 + 16) = 0;
    v127 = sub_100004CB8(&qword_100642008);
    v128 = v208;
    sub_10035A700(v208, (v126 + *(v127 + 44)));
    *(v126 + *(sub_100004CB8(&qword_100642010) + 36)) = 256;
    v129 = sub_1004DAF3C();
    if (qword_10063D9B8 != -1)
    {
      swift_once();
    }

    LODWORD(v247) = v121;
    sub_1004D9C8C();
    v130 = v126 + *(v196 + 36);
    *v130 = v129;
    *(v130 + 8) = v131;
    *(v130 + 16) = v132;
    *(v130 + 24) = v133;
    *(v130 + 32) = v134;
    *(v130 + 40) = 0;
    v135 = v200;
    sub_10035B7FC(v128, v200);
    sub_1004DBD2C();
    sub_1004DA45C();
    v136 = v209;
    sub_100047F38(v135, v209, &qword_100641F90);
    v137 = (v136 + *(v197 + 36));
    v138 = v256;
    v137[4] = v255;
    v137[5] = v138;
    v137[6] = v257;
    v139 = v252;
    *v137 = v251;
    v137[1] = v139;
    v140 = v254;
    v137[2] = v253;
    v137[3] = v140;
    KeyPath = swift_getKeyPath();
    v142 = v136;
    v143 = v206;
    sub_100047F38(v142, v206, &qword_100641F98);
    v144 = v143 + *(v207 + 36);
    *v144 = KeyPath;
    *(v144 + 8) = 0;
    *(v144 + 16) = 1;
    v145 = v143;
    v146 = v203;
    sub_100047F38(v145, v203, &qword_100641FA0);
    *(v146 + *(v204 + 36)) = 256;
    LODWORD(KeyPath) = sub_1004DAC1C();
    v147 = v146;
    v148 = v202;
    sub_100047F38(v147, v202, &qword_100641FA8);
    *(v148 + *(v199 + 36)) = KeyPath;
    v149 = sub_1004DB10C();
    v150 = swift_getKeyPath();
    v151 = v148;
    v152 = v205;
    sub_100047F38(v151, v205, &qword_100641FB0);
    v153 = (v152 + *(v198 + 36));
    *v153 = v150;
    v153[1] = v149;
    LOBYTE(v149) = sub_1004DAF1C();
    sub_1004D9C8C();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v162 = v152;
    v163 = v212;
    sub_100047F38(v162, v212, &qword_100641FB8);
    v164 = v163 + *(v201 + 36);
    *v164 = v149;
    *(v164 + 8) = v155;
    *(v164 + 16) = v157;
    *(v164 + 24) = v159;
    *(v164 + 32) = v161;
    *(v164 + 40) = 0;
    v165 = sub_1004DAF3C();
    if (qword_10063D9C0 != -1)
    {
      swift_once();
    }

    sub_1004D9C8C();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v174 = v163;
    v175 = v210;
    sub_100047F38(v174, v210, &qword_100641FC0);
    v176 = v175 + *(v211 + 36);
    *v176 = v165;
    *(v176 + 8) = v167;
    *(v176 + 16) = v169;
    *(v176 + 24) = v171;
    *(v176 + 32) = v173;
    *(v176 + 40) = 0;
    v177 = v215;
    sub_100047F38(v175, v215, &qword_100641FC8);
    v178 = v214;
    sub_1000108DC(v126, v214, &qword_100641FD0);
    v179 = v216;
    sub_1000108DC(v177, v216, &qword_100641FC8);
    v121 = v126;
    v180 = v217;
    sub_1000108DC(v178, v217, &qword_100641FD0);
    v181 = sub_100004CB8(&qword_100642018);
    sub_1000108DC(v179, v180 + *(v181 + 48), &qword_100641FC8);
    v182 = v180 + *(v181 + 64);
    sub_10001074C(v177, &qword_100641FC8);
    sub_10001074C(v121, &qword_100641FD0);
    *v182 = 0x3FF0000000000000;
    *(v182 + 8) = 0;
    sub_10001074C(v179, &qword_100641FC8);
    sub_10001074C(v178, &qword_100641FD0);
    sub_100047F38(v180, v242, &qword_100641F88);
    v124 = 0;
    v79 = v241;
    LOBYTE(v121) = v247;
  }

  v183 = v242;
  (*(v238 + 56))(v242, v124, 1, v239);
  v247 = sub_1004DA7CC();
  v184 = v236;
  sub_1000108DC(v79, v236, &qword_100641FE0);
  v185 = v237;
  sub_1000108DC(v183, v237, &qword_100641FD8);
  v186 = v240;
  sub_1000108DC(v184, v240, &qword_100641FE0);
  v187 = v79;
  v188 = sub_100004CB8(&qword_100642000);
  v189 = v186 + v188[12];
  v190 = v245;
  v191 = v244;
  *v189 = v245;
  *(v189 + 8) = v191;
  v192 = v121 & 1;
  *(v189 + 16) = v192;
  *(v189 + 24) = v246;
  sub_1000108DC(v185, v186 + v188[16], &qword_100641FD8);
  v193 = v186 + v188[20];
  sub_100051E00(v190, v191, v192);

  sub_10001074C(v183, &qword_100641FD8);
  sub_10001074C(v187, &qword_100641FE0);
  *v193 = v247;
  *(v193 + 8) = 0;
  *(v193 + 16) = 1;
  *(v193 + 24) = 0;
  *(v193 + 32) = 1;
  sub_10001074C(v185, &qword_100641FD8);
  sub_100051E10(v190, v191, v192);

  return sub_10001074C(v184, &qword_100641FE0);
}