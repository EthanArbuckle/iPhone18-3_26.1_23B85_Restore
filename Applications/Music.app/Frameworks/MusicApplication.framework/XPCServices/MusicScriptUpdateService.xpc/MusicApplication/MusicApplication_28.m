uint64_t sub_1002BECC8@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
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
    v18 = sub_1004BB634();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    (*(v10 + 8))(v13, v9);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1004BB6C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007214(v8, &unk_10060EBE0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(a3, v12, v9);
    v15 = *(a2 + 24);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15(a1, a2);
    (*(v10 + 8))(v12, v9);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t sub_1002BF204()
{
  sub_100003ABC(&qword_10060AA30);
  swift_allocObject();
  sub_1004BAB94();
  sub_1004BB554();
}

uint64_t sub_1002BF424@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004BB6C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060EBE0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  sub_1004BBA64();
  sub_10000F778(v11, v9, &unk_10060EBE0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_100007214(v11, &unk_10060EBE0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    (*(v3 + 16))(a1, v5, v2);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15 = *(v14 + 20);
    sub_1004BB5A4();
    (*(v3 + 8))(v5, v2);
    sub_100007214(v11, &unk_10060EBE0);
    v16 = sub_1004BB634();
    (*(*(v16 - 8) + 56))(a1 + v15, 0, 1, v16);
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v1 - 8);
  v61 = &v59 - v2;
  v3 = sub_1004BB6C4();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = __chkstk_darwin(v3);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v59 - v6;
  v7 = sub_100003ABC(&unk_10060EBE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v19 = sub_100003ABC(&qword_10060EF20);
  v20 = __chkstk_darwin(v19 - 8);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v24 = sub_100003ABC(&qword_10060A7B8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  sub_1004BB934();
  v30 = sub_1004BB914();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    goto LABEL_2;
  }

  sub_10000F778(v29, v27, &qword_10060A7B8);
  v33 = (*(v31 + 88))(v27, v30);
  if (v33 != enum case for Playlist.Variant.regular(_:) && v33 != enum case for Playlist.Variant.smart(_:))
  {
    if (v33 == enum case for Playlist.Variant.genius(_:))
    {
      goto LABEL_2;
    }

    if (v33 == enum case for Playlist.Variant.favoriteSongs(_:))
    {
      goto LABEL_7;
    }

    if (v33 == enum case for Playlist.Variant.folder(_:))
    {
      goto LABEL_15;
    }

    if (v33 != enum case for Playlist.Variant.subscribed(_:))
    {
      if (v33 != enum case for Playlist.Variant.admin(_:))
      {
        if (v33 == enum case for Playlist.Variant.personalMix(_:))
        {
          sub_1004BB884();
          sub_10000F778(v13, v10, &unk_10060EBE0);
          v48 = v64;
          v47 = v65;
          if ((*(v64 + 48))(v10, 1, v65) == 1)
          {
            sub_100007214(v13, &unk_10060EBE0);
            v49 = type metadata accessor for ArtworkImage.ViewModel(0);
            v50 = v62;
            (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
          }

          else
          {
            v51 = *(v48 + 32);
            v52 = v63;
            v51(v63, v10, v47);
            v53 = v60;
            (*(v48 + 16))(v60, v52, v47);
            v54 = v61;
            sub_1004BB624();
            (*(v48 + 8))(v52, v47);
            sub_100007214(v13, &unk_10060EBE0);
            v55 = sub_1004BB634();
            (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
            v50 = v62;
            v51(v62, v53, v47);
            v49 = type metadata accessor for ArtworkImage.ViewModel(0);
            sub_1002C00E8(v54, v50 + *(v49 + 20));
            (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v56 = *(v49 - 8);
          v57 = *(v56 + 48);
          if (v57(v50, 1, v49) == 1)
          {
            sub_1002BF424(v66);
            if (v57(v50, 1, v49) != 1)
            {
              sub_100007214(v50, &qword_10060EF20);
            }
          }

          else
          {
            v58 = v66;
            sub_1002C0084(v50, v66);
            (*(v56 + 56))(v58, 0, 1, v49);
          }

          goto LABEL_16;
        }

        (*(v31 + 8))(v27, v30);
LABEL_15:
        v46 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
LABEL_16:
        v44 = &qword_10060A7B8;
        v45 = v29;
        return sub_100007214(v45, v44);
      }

LABEL_2:
      sub_100007214(v29, &qword_10060A7B8);
      return sub_1002BF424(v66);
    }
  }

LABEL_7:
  sub_100007214(v29, &qword_10060A7B8);
  sub_1002BF424(v23);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v23, 1, v34) != 1)
  {
    v41 = v66;
    sub_1002C0084(v23, v66);
    return (*(v35 + 56))(v41, 0, 1, v34);
  }

  sub_1004BB8C4();
  sub_10000F778(v18, v16, &unk_10060EBE0);
  v38 = v64;
  v37 = v65;
  if ((*(v64 + 48))(v16, 1, v65) == 1)
  {
    sub_100007214(v18, &unk_10060EBE0);
    v39 = 1;
    v40 = v66;
  }

  else
  {
    v42 = v63;
    (*(v38 + 32))(v63, v16, v37);
    v40 = v66;
    (*(v38 + 16))(v66, v42, v37);
    v62 = *(v34 + 20);
    sub_1004BB5B4();
    (*(v38 + 8))(v42, v37);
    sub_100007214(v18, &unk_10060EBE0);
    v43 = sub_1004BB634();
    (*(*(v43 - 8) + 56))(v40 + v62, 0, 1, v43);
    v39 = 0;
  }

  (*(v35 + 56))(v40, v39, 1, v34);
  result = (v36)(v23, 1, v34);
  if (result != 1)
  {
    v44 = &qword_10060EF20;
    v45 = v23;
    return sub_100007214(v45, v44);
  }

  return result;
}

uint64_t sub_1002C0084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C00E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060DD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&unk_10060EBE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = sub_100003ABC(&qword_10060A7B8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_1004BB934();
  v14 = sub_1004BB914();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_2;
  }

  sub_10000F778(v13, v11, &qword_10060A7B8);
  v16 = (*(v15 + 88))(v11, v14);
  if (v16 == enum case for Playlist.Variant.regular(_:) || v16 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v16 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    sub_100007214(v13, &qword_10060A7B8);
    goto LABEL_10;
  }

  if (v16 == enum case for Playlist.Variant.favoriteSongs(_:))
  {
    goto LABEL_8;
  }

  if (v16 == enum case for Playlist.Variant.folder(_:))
  {
    goto LABEL_15;
  }

  if (v16 == enum case for Playlist.Variant.subscribed(_:))
  {
LABEL_8:
    sub_100007214(v13, &qword_10060A7B8);
    sub_1004BBA64();
    v18 = sub_1004BB6C4();
    v19 = (*(*(v18 - 8) + 48))(v7, 1, v18);
    sub_100007214(v7, &unk_10060EBE0);
    if (v19 == 1)
    {
      sub_1004BB5B4();
LABEL_11:
      v20 = sub_1004BB634();
      return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    }

LABEL_10:
    sub_1004BB5A4();
    goto LABEL_11;
  }

  if (v16 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v16 == enum case for Playlist.Variant.personalMix(_:))
  {
    sub_1004BB884();
    v23 = sub_1004BB6C4();
    v24 = (*(*(v23 - 8) + 48))(v5, 1, v23);
    sub_100007214(v5, &unk_10060EBE0);
    if (v24 == 1)
    {
      sub_1004BB5A4();
    }

    else
    {
      sub_1004BB624();
    }

    v25 = sub_1004BB634();
    (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    return sub_100007214(v13, &qword_10060A7B8);
  }

  (*(v15 + 8))(v11, v14);
LABEL_15:
  v22 = sub_1004BB634();
  (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  return sub_100007214(v13, &qword_10060A7B8);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_1004B7BB4();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004BAD04();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B7C94();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BBA84();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B7A34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BB434();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004B75E4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v44, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v15 + 32))(v17, v21, v14);
    sub_1002BE7B4(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v45);
    return (*(v15 + 8))(v17, v14);
  }

  v24 = v45;
  if (v22 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v11 + 32))(v13, v21, v10);
    sub_1002BE7B4(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v24);
    return (*(v11 + 8))(v13, v10);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v21, v18);
    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 32))(v41, v21, v43);
    v28 = &MusicVideo.artwork.getter;
LABEL_7:
    sub_1002BE7B4(v28, &static Artwork.CropStyle.boundedBox.getter, v24);
    return (*(v25 + 8))(v26, v27);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v21, v18);
    v30 = v39;
    v29 = v40;
    (*(v39 + 32))(v9, v21, v40);
    Playlist.artworkViewModel.getter(v24);
    return (*(v30 + 8))(v9, v29);
  }

  else
  {
    if (v22 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v19 + 96))(v21, v18);
      v26 = v36;
      v25 = v37;
      v27 = v38;
      (*(v37 + 32))(v36, v21, v38);
      v28 = &TVSeason.artwork.getter;
      goto LABEL_7;
    }

    if (v22 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v19 + 96))(v21, v18);
      v26 = v33;
      v25 = v34;
      v27 = v35;
      (*(v34 + 32))(v33, v21, v35);
      v28 = &UploadedVideo.artwork.getter;
      goto LABEL_7;
    }

    v31 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t TVEpisode.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&unk_10060EBE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_1004BB6C4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_1004B7CB4();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100007214(v7, &unk_10060EBE0);
    sub_1004B7CD4();
    if (v15(v5, 1, v8) == 1)
    {
      sub_100007214(v5, &unk_10060EBE0);
      v16 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }

    (*(v9 + 32))(v12, v5, v8);
    (*(v9 + 16))(a1, v12, v8);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    v19 = *(v18 + 20);
    sub_1004BB5B4();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(a1, v14, v8);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    v19 = *(v18 + 20);
    sub_1004BB5B4();
    (*(v9 + 8))(v14, v8);
  }

  v20 = sub_1004BB634();
  (*(*(v20 - 8) + 56))(a1 + v19, 0, 1, v20);
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_1002C1364@<X0>(uint64_t a1@<X8>)
{
  sub_1004BB5F4();
  v2 = sub_1004BB634();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002C141C@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = sub_1004BB634();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004BAD04();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BB384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004BB4D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    sub_1002BE7B4(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v14, v11);
    v17 = v20;
    (*(v20 + 32))(v6, v14, v4);
    sub_1002BE7B4(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v17 + 8))(v6, v4);
  }

  else
  {
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t GenericMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = sub_1004B7AA4();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin(v1);
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1004B7B14();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004B7BB4();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004B7B64();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1004B7C34();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1004B7C94();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1004B7CF4();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004BB204();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1004BBAB4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1004BB744();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1004BB384();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1004BBA84();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BAD04();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin(v14);
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004B7A34();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin(v16);
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BB464();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin(v18);
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004B7AD4();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin(v20);
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BB6F4();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin(v22);
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004BB564();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1004BB434();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1004B7644();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v71 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v69 - v36;
  v70 = *(v33 + 16);
  v70(&v69 - v36, v124, v32);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v29 + 32))(v31, v37, v28);
    sub_1002BE7B4(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    sub_1002BEA58(v40);
    return (*(v25 + 8))(v27, v24);
  }

  v41 = v37;
  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    v42 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v120;
    v43 = v121;
    v45 = v122;
    (*(v121 + 32))(v120, v37, v122);
    v46 = &CreditArtist.artwork.getter;
LABEL_14:
    v47 = v46;
    v48 = v40;
LABEL_15:
    sub_1002BE7B4(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v117;
    v43 = v118;
    v45 = v119;
    (*(v118 + 32))(v117, v37, v119);
    v46 = &Curator.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v114;
    v43 = v115;
    v45 = v116;
    (*(v115 + 32))(v114, v37, v116);
    v46 = &EditorialItem.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v111;
    v43 = v112;
    v45 = v113;
    (*(v112 + 32))(v111, v37, v113);
    v49 = &Genre.artwork.getter;
LABEL_23:
    v47 = v49;
    v48 = v40;
    goto LABEL_15;
  }

  if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v108;
    v43 = v109;
    v45 = v110;
    (*(v109 + 32))(v108, v37, v110);
    v49 = &MusicMovie.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 32))(v105, v37, v107);
    v49 = &MusicVideo.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v103;
    v44 = v102;
    v45 = v104;
    (*(v103 + 32))(v102, v37, v104);
    Playlist.artworkViewModel.getter(v40);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
    return (*(v33 + 8))(v37, v32);
  }

  if (v38 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v100;
    v44 = v99;
    v45 = v101;
    (*(v100 + 32))(v99, v37, v101);
    v49 = &RadioShow.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v37, v98);
    v49 = &RecordLabel.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v33 + 96))(v37, v32);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 32))(v93, v37, v95);
    sub_1002BE7B4(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
    return (*(v51 + 8))(v52, v53);
  }

  if (v38 == enum case for GenericMusicItem.song(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v91;
    v41 = v90;
    v32 = v92;
    (*(v91 + 32))(v90, v37, v92);
    v54 = &Song.artwork.getter;
LABEL_36:
    v55 = v54;
    v56 = &static Artwork.CropStyle.boundedBox.getter;
LABEL_39:
    sub_1002BE7B4(v55, v56, v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.station(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v88;
    v41 = v87;
    v32 = v89;
    (*(v88 + 32))(v87, v37, v89);
    v55 = &Station.artwork.getter;
    v56 = &static Artwork.CropStyle.specificRectangle.getter;
    goto LABEL_39;
  }

  if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v85;
    v41 = v84;
    v32 = v86;
    (*(v85 + 32))(v84, v37, v86);
    TVEpisode.artworkViewModel.getter(v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v82;
    v41 = v81;
    v32 = v83;
    (*(v82 + 32))(v81, v37, v83);
    v54 = &TVSeason.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v79;
    v41 = v78;
    v32 = v80;
    (*(v79 + 32))(v78, v37, v80);
    v54 = &TVShow.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v76;
    v41 = v75;
    v32 = v77;
    (*(v76 + 32))(v75, v37, v77);
    v54 = &UploadedAudio.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v73;
    v41 = v72;
    v32 = v74;
    (*(v73 + 32))(v72, v37, v74);
    v54 = &UploadedVideo.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.other(_:))
  {
    (*(v33 + 8))(v37, v32);
    v57 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v57 - 8) + 56))(v40, 1, 1, v57);
  }

  else
  {
    if (qword_100609C18 != -1)
    {
      swift_once();
    }

    v58 = sub_1004B80B4();
    sub_100007084(v58, static Logger.artwork);
    v70(v71, v124, v32);
    v59 = sub_1004B8094();
    LODWORD(v122) = sub_1004BC994();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v125);
      *(v60 + 12) = 2080;
      sub_1002C4844();
      v61 = v71;
      v62 = sub_1004BD934();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = sub_1002C4260(v62, v64, &v125);

      *(v60 + 14) = v66;
      v67 = v124;
      _os_log_impl(&_mh_execute_header, v124, v122, "Unhandled case for %s: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v33 + 8);
      v65(v71, v32);
    }

    v68 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v68 - 8) + 56))(v40, 1, 1, v68);
    return (v65)(v37, v32);
  }
}

uint64_t ArtworkImage.ViewModel.image(for:)(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100003ABC(&qword_10060DD10);
  *(v3 + 40) = swift_task_alloc();
  v4 = sub_1004BB634();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_1004BB6C4();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1002C3130, 0, 0);
}

uint64_t sub_1002C3130()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  sub_10000F778(v4 + *(v5 + 20), v3, &qword_10060DD10);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = sub_100007084(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_100007214(*(v0 + 5), &qword_10060DD10);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (qword_100609C10 != -1)
  {
    swift_once();
  }

  v12 = sub_1004BB594();
  v13 = sub_100007084(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = sub_1002C3350;
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_1002C3350(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[7];
  if (v1)
  {
    (*(v9 + 8))(v4[8], v4[6]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1002C35A0, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1002C35A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_100003ABC(&qword_10060AA28);
  *(v5 + 56) = swift_task_alloc();
  sub_100003ABC(&qword_10060DD10);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1002C36F8, 0, 0);
}

uint64_t sub_1002C36F8()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = sub_1004BB634();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v4, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = sub_1004BB594();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v3, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1002C38EC;
  v14 = v0[7];
  v15 = v0[8];
  v16.n128_u64[0] = v0[2];
  v17.n128_u64[0] = v0[3];

  v13.n128_f64[0] = 1.0 / v7;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v15, v14, 0, 0, v16, v17, v13);
}

uint64_t sub_1002C38EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  sub_100007214(*(v4 + 56), &qword_10060AA28);
  sub_100007214(v6, &qword_10060DD10);
  if (v1)
  {

    return _swift_task_switch(sub_1002C3AAC, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_1002C3AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3B18(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100215F68;

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_100003ABC(&qword_10060DD10);
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_1004BB634();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_1004BB6C4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1002C3D18, 0, 0);
}

uint64_t sub_1002C3D18()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  (*(v4 + 8))(v5, v4);
  (*(v4 + 16))(v5, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = sub_100007084(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_100007214(*(v0 + 7), &qword_10060DD10);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (qword_100609C10 != -1)
  {
    swift_once();
  }

  v12 = sub_1004BB594();
  v13 = sub_100007084(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = sub_1002C3F38;
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_1002C3F38(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v4[10], v4[8]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1002C4188, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1002C4188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C4204(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1002C4260(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1002C4260(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1002C432C(v11, 0, 0, 1, a1, a2);
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
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_1002C432C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1002C4438(a5, a6);
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
    result = sub_1004BD4C4();
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

id *sub_1002C4438(uint64_t a1, unint64_t a2)
{
  v3 = sub_1002C4484(a1, a2);
  sub_1002C45B4(&off_1005BE348);
  return v3;
}

id *sub_1002C4484(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1002C46A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004BD4C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004BC044();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1002C46A0(v10, 0);
        result = sub_1004BD3F4();
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

uint64_t sub_1002C45B4(uint64_t result)
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

  result = sub_1002C4714(result, v11, 1, v3);
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

id *sub_1002C46A0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003ABC(&qword_10060AA38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_1002C4714(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_10060AA38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1002C4808(void (*a1)(void))
{
  a1();

  return sub_1004BDC84();
}

unint64_t sub_1002C4844()
{
  result = qword_10060AA20;
  if (!qword_10060AA20)
  {
    sub_1004B7644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AA20);
  }

  return result;
}

uint64_t sub_1002C48A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    result = (a1)(result);
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_6:
    v8 &= v8 - 1;
    if (result)
    {
      a1 = 0;
      goto LABEL_14;
    }
  }

  do
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      a1 = 1;
      goto LABEL_14;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v11 = v12;
  result = (a1)(result);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_14:

  return a1;
}

Swift::Bool __swiftcall Text.StringOption.evaluate(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

BOOL Text.StringOption.evaluate(_:)()
{
  v0 = sub_1004B6874();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = sub_1004B6824();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6814();
  sub_1002C6F78(&qword_10060AA40, &type metadata accessor for AttributedString.CharacterView);
  sub_1004BC724();
  sub_1004BC764();
  sub_1002C6F78(&qword_10060AA48, &type metadata accessor for AttributedString.Index);
  v11 = sub_1004BBD84();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return (v11 & 1) == 0;
}

uint64_t Text.init(optional:options:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 56);
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_7:
      v6 &= v6 - 1;
      if (!v7)
      {

        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        sub_1002C4D1C();
        return sub_1004B9D84();
      }

      v6 = *(a3 + 56 + 8 * v9);
      ++v3;
      if (v6)
      {
        v3 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

unint64_t sub_1002C4D1C()
{
  result = qword_10060DCE0;
  if (!qword_10060DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DCE0);
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_1004B68B4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  sub_1002C5000(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1002C5070(a1);

    sub_1002C5070(v6);
  }

  else
  {
    v14 = (*(v8 + 32))(v13, v6, v7);
    __chkstk_darwin(v14);
    *&v18[-16] = v13;
    v15 = sub_1002C48A8(sub_1002C5330, &v18[-32], a2);

    if (v15)
    {
      (*(v8 + 16))(v11, v13, v7);
      v16 = sub_1004B9D74();
      sub_1002C5070(a1);
      (*(v8 + 8))(v13, v7);
      return v16;
    }

    sub_1002C5070(a1);
    (*(v8 + 8))(v13, v7);
  }

  return 0;
}

uint64_t sub_1002C5000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C5070(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060AA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C50D8()
{
  v0 = sub_1004B6874();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = sub_1004B6824();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6814();
  sub_1002C6F78(&qword_10060AA40, &type metadata accessor for AttributedString.CharacterView);
  sub_1004BC724();
  sub_1004BC764();
  sub_1002C6F78(&qword_10060AA48, &type metadata accessor for AttributedString.Index);
  v11 = sub_1004BBD84();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t static Edge.Set.on(_:)()
{
  v0 = sub_1004B99A4();
  v1 = sub_1004B9914();
  sub_1004B9924();
  if (sub_1004B9924() == v1)
  {
    sub_100003ABC(&qword_10060AA58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50C0;
    v3 = sub_1004B9994();
    *(inited + 32) = v3;
    v4 = sub_1004B99B4();
    *(inited + 33) = v4;
    v5 = sub_1004B99A4();
    sub_1004B99A4();
    if (sub_1004B99A4() != v3)
    {
      v5 = sub_1004B99A4();
    }

    sub_1004B99A4();
    if (sub_1004B99A4() != v4)
    {
      v5 = sub_1004B99A4();
    }

    sub_1004B99A4();
    if (sub_1004B99A4() != v5)
    {
      v0 = sub_1004B99A4();
    }
  }

  v6 = sub_1004B9934();
  sub_1004B9924();
  if (sub_1004B9924() == v6)
  {
    sub_100003ABC(&qword_10060AA58);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1004C50C0;
    v8 = sub_1004B9974();
    *(v7 + 32) = v8;
    v9 = sub_1004B9984();
    *(v7 + 33) = v9;
    v10 = sub_1004B99A4();
    sub_1004B99A4();
    if (sub_1004B99A4() != v8)
    {
      v10 = sub_1004B99A4();
    }

    sub_1004B99A4();
    if (sub_1004B99A4() != v9)
    {
      v10 = sub_1004B99A4();
    }

    sub_1004B99A4();
    if (sub_1004B99A4() != v10)
    {
      return sub_1004B99A4();
    }
  }

  return v0;
}

double EdgeInsets.init(_:length:)(char a1, double a2)
{
  if (a1)
  {
    sub_1004B9934();
  }

  else
  {
    sub_1004B9914();
  }

  static Edge.Set.on(_:)();

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(a2);
}

double EdgeInsets.init(_:length:)(double a1)
{
  static Edge.Set.on(_:)();

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(a1);
}

void EdgeInsets.affecting(_:)(uint64_t a1)
{
  sub_1004B9964();
  _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(0.0);
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return;
    }

    v5 = *(a1 + 56 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

double EdgeInsets.affecting(_:)(char a1)
{
  sub_100003ABC(&qword_10060AA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = a1 & 1;
  v3 = sub_1002C65DC(inited);
  swift_setDeallocating();
  EdgeInsets.affecting(_:)(v3);
  v5 = v4;

  return v5;
}

double EdgeInsets.value(for:)(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double CGSize.length(for:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

uint64_t Axis.isOrthogonal(to:)(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Optional<A>.isOrthogonal(to:)(char a1, char a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Axis.Set.init(_:)(char a1)
{
  if (a1)
  {
    return sub_1004B9934();
  }

  else
  {
    return sub_1004B9914();
  }
}

uint64_t View.always(perform:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1();
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double DynamicTypeSize.scaledValue(_:relativeTo:)(uint64_t a1, double a2)
{
  v5 = sub_100003ABC(&qword_10060AA68);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v9 = sub_1004B8C94();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, v2, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = sub_1004BCCE4();
  v12 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v11];
  [v8 scaledValueForValue:v12 compatibleWithTraitCollection:a2];
  v14 = v13;

  return v14;
}

uint64_t static Color.random(opacity:)()
{
  v0 = sub_1004BA244();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DCF8C(0x20000000000001uLL);
  sub_1000DCF8C(0x20000000000001uLL);
  sub_1000DCF8C(0x20000000000001uLL);
  (*(v1 + 104))(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  return sub_1004BA2F4();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = sub_1004B8D44();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = sub_1004B8E74();
  __chkstk_darwin(v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C6BF0(v4, v17, &type metadata accessor for RoundedRectangle);
  v18 = enum case for LayoutDirection.leftToRight(_:);
  v19 = *(v9 + 104);
  v19(v14, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_1002C6BF0(v17, a1, &type metadata accessor for RoundedRectangle);
  v20 = _s21OmnidirectionalOutsetVMa();
  *(a1 + v20[5]) = a3;
  *(a1 + v20[6]) = a2;
  *(a1 + v20[7]) = a3;
  *(a1 + v20[8]) = a2;
  v19(v12, v18, v8);
  LOBYTE(v18) = sub_1004B8D34();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v21(v14, v8);
  result = sub_1002C6768(v17);
  *(a1 + v20[9]) = (v18 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = sub_1004B8D44();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  v21 = sub_1004B8E74();
  __chkstk_darwin(v21 - 8);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C6BF0(v7, v23, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v20, a1, v14);
  sub_1002C6BF0(v23, a2, &type metadata accessor for RoundedRectangle);
  v24 = _s21OmnidirectionalOutsetVMa();
  *(a2 + v24[5]) = a3;
  *(a2 + v24[6]) = a4;
  *(a2 + v24[7]) = a5;
  *(a2 + v24[8]) = a6;
  (*(v15 + 104))(v18, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = sub_1004B8D34();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v25(v20, v14);
  result = sub_1002C6768(v23);
  *(a2 + v24[9]) = (v7 & 1) == 0;
  return result;
}

double sub_1002C6048@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_1002C6BF0(v5, a2, _s21OmnidirectionalOutsetVMa);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - a3;
  *(a2 + v8) = *(a2 + v8) - a3;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - a3;
  result = *(a2 + v9) - a3;
  *(a2 + v9) = result;
  return result;
}

double sub_1002C60D0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004B92C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B8E74();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)();
  sub_1002C6BF0(v2, v11, &type metadata accessor for RoundedRectangle);
  (*(v5 + 32))(v7, &v11[*(v9 + 28)], v4);
  sub_1004B9BD4();
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v17;
  return result;
}

void (*sub_1002C62E0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1004B8654();
  return sub_1002B1470;
}

uint64_t sub_1002C636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002C6F78(&qword_10060AB48, _s21OmnidirectionalOutsetVMa);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002C6400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002C6F78(&qword_10060AB48, _s21OmnidirectionalOutsetVMa);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002C6494(uint64_t a1)
{
  v2 = sub_1002C6F78(&qword_10060AB48, _s21OmnidirectionalOutsetVMa);

  return Shape.body.getter(a1, v2);
}

double _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(double a1)
{
  v2 = sub_1004B9974();
  sub_1004B99A4();
  if (sub_1004B99A4() == v2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0.0;
  }

  sub_1004B9994();
  sub_1004B99A4();
  sub_1004B99A4();
  sub_1004B9984();
  sub_1004B99A4();
  sub_1004B99A4();
  sub_1004B99B4();
  sub_1004B99A4();
  sub_1004B99A4();
  return v3;
}

Swift::Int sub_1002C65DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AB70);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_1004BDBA4();
      v11 = sub_1004B9944();
      sub_1004BDBC4(v11);
      result = sub_1004BDBF4();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = sub_1004B9944();
        result = sub_1004B9944();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t _s21OmnidirectionalOutsetVMa()
{
  result = qword_10060AAD8;
  if (!qword_10060AAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C6768(uint64_t a1)
{
  v2 = sub_1004B8E74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002C67C8()
{
  result = qword_10060AA70;
  if (!qword_10060AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AA70);
  }

  return result;
}

uint64_t sub_1002C6888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B8E74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002C6908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B8E74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1002C6978()
{
  sub_1004B8E74();
  if (v0 <= 0x3F)
  {
    _s3__C30UIUserInterfaceLayoutDirectionOMa_0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1002C6A14()
{
  result = qword_10060AB20;
  if (!qword_10060AB20)
  {
    sub_100003B68(&qword_10060AB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AB20);
  }

  return result;
}

unint64_t sub_1002C6A7C()
{
  result = qword_10060AB30;
  if (!qword_10060AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AB30);
  }

  return result;
}

uint64_t sub_1002C6BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1002C6C58(uint64_t a1)
{
  v2 = sub_1004B6F24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003ABC(&qword_10060AB50);
    v9 = sub_1004BD3E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1002C6F78(&qword_10060AB58, &type metadata accessor for Calendar.Component);
      v16 = sub_1004BBCD4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1002C6F78(&qword_10060AB60, &type metadata accessor for Calendar.Component);
          v23 = sub_1004BBD84();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1002C6F78(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_1002C6FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AB68);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004BDBA4();
      sub_1004BDBB4(v10);
      result = sub_1004BDBF4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1002C70FC()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100618E98);
  sub_100007084(v0, qword_100618E98);
  sub_1002BE6F8();
  sub_1004BD154();
  return sub_1004B80C4();
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v2 - 8);
  v110 = &v103 - v3;
  v4 = sub_1004BCEE4();
  v111 = *(v4 - 1);
  v112 = v4;
  v5 = __chkstk_darwin(v4);
  v108 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v109 = &v103 - v7;
  v121 = 0xD00000000000001CLL;
  v122 = 0x8000000100507880;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  sub_1004BD404(26);

  v115._countAndFlagsBits = 0xD000000000000017;
  v115._object = 0x80000001005078A0;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v123._countAndFlagsBits = sub_1004BC5C4();
  sub_1004BC024(v123);

  v124._countAndFlagsBits = 10;
  v124._object = 0xE100000000000000;
  sub_1004BC024(v124);
  sub_1004BC024(v115);

  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  sub_1004BD404(18);

  v115._countAndFlagsBits = 0x6D756D696E696D20;
  v115._object = 0xEF203A20657A6953;
  v125._countAndFlagsBits = sub_1004BCE04();
  sub_1004BC024(v125);

  v126._countAndFlagsBits = 10;
  v126._object = 0xE100000000000000;
  sub_1004BC024(v126);
  sub_1004BC024(v115);

  if ((*(v0 + v8[14] + 16) & 1) == 0)
  {
    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    sub_1004BD404(23);

    v115._countAndFlagsBits = 0xD000000000000014;
    v115._object = 0x8000000100507C60;
    v127._countAndFlagsBits = sub_1004BCE04();
    sub_1004BC024(v127);

    v128._countAndFlagsBits = 10;
    v128._object = 0xE100000000000000;
    sub_1004BC024(v128);
    sub_1004BC024(v115);
  }

  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  sub_1004BD404(20);

  v120._countAndFlagsBits = 0xD000000000000011;
  v120._object = 0x80000001005078C0;
  v9 = v0 + v8[15];
  v10 = *(v9 + 16);
  v115 = *v9;
  v116 = v10;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v129._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v129);

  v130._countAndFlagsBits = 10;
  v130._object = 0xE100000000000000;
  sub_1004BC024(v130);
  sub_1004BC024(v120);

  v11 = *(v0 + v8[19]);
  if (v11 == 2)
  {
    v131._countAndFlagsBits = 0xD00000000000001ALL;
    v131._object = 0x80000001005078E0;
    sub_1004BC024(v131);
  }

  else
  {
    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    sub_1004BD404(19);

    v115._countAndFlagsBits = 0xD000000000000010;
    v115._object = 0x8000000100507C40;
    if (v11)
    {
      v12._countAndFlagsBits = 1702195828;
    }

    else
    {
      v12._countAndFlagsBits = 0x65736C6166;
    }

    if (v11)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v12._object = v13;
    sub_1004BC024(v12);

    v132._countAndFlagsBits = 10;
    v132._object = 0xE100000000000000;
    sub_1004BC024(v132);
    sub_1004BC024(v115);
  }

  v115._countAndFlagsBits = 0x3A206168706C6120;
  v115._object = 0xE900000000000020;
  v133._countAndFlagsBits = sub_1004BC5C4();
  sub_1004BC024(v133);

  v134._countAndFlagsBits = 10;
  v134._object = 0xE100000000000000;
  sub_1004BC024(v134);
  sub_1004BC024(v115);

  v115._countAndFlagsBits = 0x203A20746E697420;
  v115._object = 0xE800000000000000;
  v120._countAndFlagsBits = *(v0 + v8[18]);
  v14 = v120._countAndFlagsBits;
  v113 = sub_100003ABC(&qword_10060A768);
  v135._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v135);

  v136._countAndFlagsBits = 10;
  v136._object = 0xE100000000000000;
  sub_1004BC024(v136);
  sub_1004BC024(v115);

  v15 = *(v0 + 8);
  v114 = v8;
  if (v15)
  {
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    v105 = *(v0 + 56);
    v103 = *(v0 + 64);
    v106 = *(v0 + 80);
    v20 = *(v0 + 96);
    v104 = *(v0 + 88);
    v107 = *(v0 + 112);
    v21 = *v0;

    v137._countAndFlagsBits = 0x6D7953209480E220;
    v137._object = 0xAE000A7B206C6F62;
    sub_1004BC024(v137);
    v115._countAndFlagsBits = 0x656D616E20202020;
    v115._object = 0xEB00000000203A20;
    v138._countAndFlagsBits = v21;
    v138._object = v15;
    sub_1004BC024(v138);

    v139._countAndFlagsBits = 10;
    v139._object = 0xE100000000000000;
    sub_1004BC024(v139);
    sub_1004BC024(v115);

    if (v16)
    {
      v22 = [v16 bundlePath];
      v23 = sub_1004BBE64();
      v25 = v24;

      strcpy(&v115, "    bundle : ");
      HIWORD(v115._object) = -4864;
      v140._countAndFlagsBits = v23;
      v140._object = v25;
      sub_1004BC024(v140);

      v141._countAndFlagsBits = 10;
      v141._object = 0xE100000000000000;
      sub_1004BC024(v141);
      sub_1004BC024(v115);
    }

    strcpy(&v115, "    style : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v120._countAndFlagsBits = v17;
    type metadata accessor for TextStyle(0);
    v26 = v17;
    v142._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v142);

    v143._countAndFlagsBits = 10;
    v143._object = 0xE100000000000000;
    sub_1004BC024(v143);
    sub_1004BC024(v115);

    if ((v18 & 1) == 0)
    {
      v115._countAndFlagsBits = 0xD000000000000014;
      v115._object = 0x8000000100507C20;
      v144._countAndFlagsBits = sub_1004BC5C4();
      sub_1004BC024(v144);

      v145._countAndFlagsBits = 10;
      v145._object = 0xE100000000000000;
      sub_1004BC024(v145);
      sub_1004BC024(v115);
    }

    strcpy(&v115, "    weight : ");
    HIWORD(v115._object) = -4864;
    v120._countAndFlagsBits = v19;
    type metadata accessor for SymbolWeight(0);
    v146._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v146);

    v147._countAndFlagsBits = 10;
    v147._object = 0xE100000000000000;
    sub_1004BC024(v147);
    sub_1004BC024(v115);

    strcpy(&v115, "    scale : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v120._countAndFlagsBits = v105;
    type metadata accessor for SymbolScale(0);
    v148._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v148);

    v149._countAndFlagsBits = 10;
    v149._object = 0xE100000000000000;
    sub_1004BC024(v149);
    sub_1004BC024(v115);

    if (v106 != 255)
    {
      strcpy(&v120, "    offset : ");
      HIWORD(v120._object) = -4864;
      v115 = v103;
      LOBYTE(v116) = v106 & 1;
      sub_100003ABC(&qword_10060AB78);
      v150._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v150);

      v151._countAndFlagsBits = 10;
      v151._object = 0xE100000000000000;
      sub_1004BC024(v151);
      sub_1004BC024(v120);
    }

    strcpy(&v115, "    alpha : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v152._countAndFlagsBits = sub_1004BC5C4();
    sub_1004BC024(v152);

    v153._countAndFlagsBits = 10;
    v153._object = 0xE100000000000000;
    sub_1004BC024(v153);
    sub_1004BC024(v115);

    v115._countAndFlagsBits = 0x746E697420202020;
    v115._object = 0xEB00000000203A20;
    v120._countAndFlagsBits = v107;
    v27 = v107;
    v154._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v154);

    v155._countAndFlagsBits = 10;
    v155._object = 0xE100000000000000;
    sub_1004BC024(v155);
    sub_1004BC024(v115);

    if (v20)
    {
      v115._countAndFlagsBits = 0xD000000000000018;
      v115._object = 0x8000000100507C00;

      v156._countAndFlagsBits = v104;
      v156._object = v20;
      sub_1004BC024(v156);

      v157._countAndFlagsBits = 10;
      v157._object = 0xE100000000000000;
      sub_1004BC024(v157);
      sub_1004BC024(v115);
    }

    v158._countAndFlagsBits = 687392;
    v158._object = 0xE300000000000000;
    sub_1004BC024(v158);
    v8 = v114;
  }

  else
  {
    v159._object = 0x8000000100507900;
    v159._countAndFlagsBits = 0x1000000000000012;
    sub_1004BC024(v159);
  }

  v28 = *(v1 + 128);
  if (v28)
  {
    v29 = *(v1 + 160);
    v107 = *(v1 + 152);
    v30 = *(v1 + 184);
    v31 = *(v1 + 176);
    v32 = *(v1 + 144);
    v33 = *(v1 + 136);
    v34 = *(v1 + 120);

    v160._countAndFlagsBits = 0x746954209480E220;
    v160._object = 0xAD00000A7B20656CLL;
    sub_1004BC024(v160);
    v115._countAndFlagsBits = 0x7478657420202020;
    v115._object = 0xEB00000000203A20;
    v161._countAndFlagsBits = v34;
    v161._object = v28;
    sub_1004BC024(v161);

    v162._countAndFlagsBits = 10;
    v162._object = 0xE100000000000000;
    sub_1004BC024(v162);
    sub_1004BC024(v115);

    strcpy(&v115, "    style : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v120._countAndFlagsBits = v33;
    type metadata accessor for TextStyle(0);
    v35 = v33;
    v163._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v163);

    v164._countAndFlagsBits = 10;
    v164._object = 0xE100000000000000;
    sub_1004BC024(v164);
    sub_1004BC024(v115);

    strcpy(&v115, "    weight : ");
    HIWORD(v115._object) = -4864;
    v120._countAndFlagsBits = v32;
    type metadata accessor for Weight(0);
    v165._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v165);

    v166._countAndFlagsBits = 10;
    v166._object = 0xE100000000000000;
    sub_1004BC024(v166);
    sub_1004BC024(v115);

    strcpy(&v115, "    alpha : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v167._countAndFlagsBits = sub_1004BC5C4();
    sub_1004BC024(v167);

    v168._countAndFlagsBits = 10;
    v168._object = 0xE100000000000000;
    sub_1004BC024(v168);
    sub_1004BC024(v115);

    v115._countAndFlagsBits = 0x746E697420202020;
    v115._object = 0xEB00000000203A20;
    v120._countAndFlagsBits = v31;
    v36 = v31;
    v169._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v169);

    v170._countAndFlagsBits = 10;
    v170._object = 0xE100000000000000;
    sub_1004BC024(v170);
    sub_1004BC024(v115);

    strcpy(&v115, "    hidden : ");
    HIWORD(v115._object) = -4864;
    if (v30)
    {
      v37._countAndFlagsBits = 1702195828;
    }

    else
    {
      v37._countAndFlagsBits = 0x65736C6166;
    }

    if (v30)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v37._object = v38;
    sub_1004BC024(v37);

    v171._countAndFlagsBits = 10;
    v171._object = 0xE100000000000000;
    sub_1004BC024(v171);
    sub_1004BC024(v115);

    if (v29)
    {
      v115._countAndFlagsBits = 0xD000000000000018;
      v115._object = 0x8000000100507C00;

      v172._countAndFlagsBits = v107;
      v172._object = v29;
      sub_1004BC024(v172);

      v173._countAndFlagsBits = 10;
      v173._object = 0xE100000000000000;
      sub_1004BC024(v173);
      sub_1004BC024(v115);
    }

    v174._countAndFlagsBits = 687392;
    v174._object = 0xE300000000000000;
    sub_1004BC024(v174);
    v8 = v114;
  }

  else
  {
    v175._countAndFlagsBits = 0x1000000000000011;
    v175._object = 0x8000000100507920;
    sub_1004BC024(v175);
  }

  v39 = *(v1 + 208);
  if (v39 == 1)
  {
    v176._countAndFlagsBits = 0x1000000000000016;
    v176._object = 0x8000000100507940;
    sub_1004BC024(v176);
  }

  else
  {
    v41 = *(v1 + 216);
    v40 = *(v1 + 224);

    v42 = v39;
    v177._object = 0x8000000100507BE0;
    v177._countAndFlagsBits = 0x1000000000000012;
    sub_1004BC024(v177);
    strcpy(&v115, "    alpha : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v178._countAndFlagsBits = sub_1004BC5C4();
    sub_1004BC024(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    sub_1004BC024(v179);
    sub_1004BC024(v115);

    v115._countAndFlagsBits = 0x746E697420202020;
    v115._object = 0xEB00000000203A20;
    v120._countAndFlagsBits = v39;
    v43 = v42;
    v180._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v180);

    v181._countAndFlagsBits = 10;
    v181._object = 0xE100000000000000;
    sub_1004BC024(v181);
    sub_1004BC024(v115);

    if (v40)
    {
      v115._countAndFlagsBits = 0xD000000000000018;
      v115._object = 0x8000000100507C00;

      v182._countAndFlagsBits = v41;
      v182._object = v40;
      sub_1004BC024(v182);

      v183._countAndFlagsBits = 10;
      v183._object = 0xE100000000000000;
      sub_1004BC024(v183);
      sub_1004BC024(v115);
    }

    v184._countAndFlagsBits = 687392;
    v184._object = 0xE300000000000000;
    sub_1004BC024(v184);

    v8 = v114;
  }

  v44 = *(v1 + 296);
  if (v44)
  {
    v45 = *(v1 + 288);
    v46 = *(v1 + 280);
    v120._countAndFlagsBits = 0x726F42209480E220;
    v120._object = 0xAE00203A20726564;
    v115._countAndFlagsBits = v46;
    LOBYTE(v115._object) = v45 & 1;
    *&v116 = v44;
    v47 = v44;
    v185._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v185);

    v186._countAndFlagsBits = 10;
    v186._object = 0xE100000000000000;
    sub_1004BC024(v186);
    sub_1004BC024(v120);
  }

  else
  {
    v187._object = 0x8000000100507960;
    v187._countAndFlagsBits = 0x1000000000000012;
    sub_1004BC024(v187);
  }

  v48 = v110;
  sub_1002C8B18(v1 + v8[9], v110);
  v50 = v111;
  v49 = v112;
  if ((v111[6])(v48, 1, v112) == 1)
  {
    sub_1002C8B88(v48);
    v188._object = 0x8000000100507980;
    v188._countAndFlagsBits = 0x1000000000000012;
    sub_1004BC024(v188);
  }

  else
  {
    v51 = v109;
    v50[4](v109, v48, v49);
    v115._countAndFlagsBits = 0x726F43209480E220;
    v115._object = 0xAE00203A2072656ELL;
    v50[2](v108, v51, v49);
    v189._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v189);

    v190._countAndFlagsBits = 10;
    v190._object = 0xE100000000000000;
    sub_1004BC024(v190);
    sub_1004BC024(v115);

    (v50[1])(v51, v49);
  }

  v52 = *(v1 + 232);
  if (v52 == 1)
  {
    v191._countAndFlagsBits = 0x1000000000000014;
    v191._object = 0x80000001005079A0;
    sub_1004BC024(v191);
  }

  else
  {
    v54 = *(v1 + 240);
    v53 = *(v1 + 248);
    v55 = *(v1 + 272);
    v56 = *(v1 + 256);
    v109 = *(v1 + 264);
    v110 = v56;

    v57 = v52;
    v112 = v54;
    v111 = v53;
    v192._countAndFlagsBits = 0x1000000000000010;
    v192._object = 0x8000000100507B60;
    sub_1004BC024(v192);
    if (v52)
    {
      v115._countAndFlagsBits = 0xD000000000000017;
      v115._object = 0x8000000100507BC0;
      v58 = v57;
      v59 = [v58 description];
      v60 = sub_1004BBE64();
      v62 = v61;

      v193._countAndFlagsBits = v60;
      v193._object = v62;
      sub_1004BC024(v193);

      v194._countAndFlagsBits = 10;
      v194._object = 0xE100000000000000;
      sub_1004BC024(v194);
      sub_1004BC024(v115);

      v8 = v114;
    }

    if (v54)
    {
      v115._countAndFlagsBits = 0xD000000000000017;
      v115._object = 0x8000000100507BA0;
      v63 = v112;
      v64 = [v63 description];
      v65 = sub_1004BBE64();
      v67 = v66;

      v195._countAndFlagsBits = v65;
      v195._object = v67;
      sub_1004BC024(v195);

      v196._countAndFlagsBits = 10;
      v196._object = 0xE100000000000000;
      sub_1004BC024(v196);
      sub_1004BC024(v115);

      v8 = v114;
    }

    v68 = v111;
    if (v53)
    {
      v115._countAndFlagsBits = 0xD000000000000014;
      v115._object = 0x8000000100507B80;
      v69 = v111;
      v70 = [v69 description];
      v71 = sub_1004BBE64();
      v73 = v72;

      v197._countAndFlagsBits = v71;
      v197._object = v73;
      sub_1004BC024(v197);

      v198._countAndFlagsBits = 10;
      v198._object = 0xE100000000000000;
      sub_1004BC024(v198);
      sub_1004BC024(v115);

      v8 = v114;
    }

    if (v110 != 2)
    {
      strcpy(&v115, "    color : ");
      BYTE5(v115._object) = 0;
      HIWORD(v115._object) = -5120;
      LOBYTE(v120._countAndFlagsBits) = v110 & 1;
      v199._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v199);

      v200._countAndFlagsBits = 10;
      v200._object = 0xE100000000000000;
      sub_1004BC024(v200);
      sub_1004BC024(v115);
    }

    if (v55)
    {
      strcpy(&v115, "    group : ");
      BYTE5(v115._object) = 0;
      HIWORD(v115._object) = -5120;

      v201._countAndFlagsBits = v109;
      v201._object = v55;
      sub_1004BC024(v201);

      v202._countAndFlagsBits = 10;
      v202._object = 0xE100000000000000;
      sub_1004BC024(v202);
      sub_1004BC024(v115);
    }

    v203._countAndFlagsBits = 687392;
    v203._object = 0xE300000000000000;
    sub_1004BC024(v203);
  }

  v74 = v1 + v8[10];
  v75 = *v74;
  if (*v74)
  {
    v77 = *(v74 + 40);
    v76 = *(v74 + 48);
    v79 = *(v74 + 24);
    v78 = *(v74 + 32);
    v80 = *(v74 + 8);
    v81 = *(v74 + 16);
    v120._countAndFlagsBits = 0x1000000000000013;
    v120._object = 0x8000000100507B40;
    v115._countAndFlagsBits = v75;
    v115._object = v80;
    *&v116 = v81;
    *(&v116 + 1) = v79;
    v117 = v78;
    v118 = v77;
    v119 = v76;
    sub_1002C8C00(v75, v80, v81, v79, v78, v77, v76);
    v82 = v76;
    v83 = v75;
    v204._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v204);

    v205._countAndFlagsBits = 10;
    v205._object = 0xE100000000000000;
    sub_1004BC024(v205);
    sub_1004BC024(v120);

    v84 = v79;
    v8 = v114;
    sub_1002BE5F8(v75, v80, v81, v84, v78, v77, v76);
  }

  else
  {
    v206._countAndFlagsBits = 0x1000000000000017;
    v206._object = 0x80000001005079C0;
    sub_1004BC024(v206);
  }

  v85 = (v1 + v8[11]);
  v86 = v85[2];
  if (v86 == 1)
  {
    v207._countAndFlagsBits = 0x1000000000000011;
    v207._object = 0x80000001005079E0;
    sub_1004BC024(v207);
  }

  else
  {
    v88 = *v85;
    v87 = v85[1];
    v89 = v86;
    v208._countAndFlagsBits = 0x646142209480E220;
    v208._object = 0xAD00000A7B206567;
    sub_1004BC024(v208);
    v115._countAndFlagsBits = 0xD000000000000014;
    v115._object = 0x8000000100507B20;
    v209._countAndFlagsBits = sub_1004BC5C4();
    sub_1004BC024(v209);

    v210._countAndFlagsBits = 10;
    v210._object = 0xE100000000000000;
    sub_1004BC024(v210);
    sub_1004BC024(v115);

    strcpy(&v115, "    alpha : ");
    BYTE5(v115._object) = 0;
    HIWORD(v115._object) = -5120;
    v211._countAndFlagsBits = sub_1004BC5C4();
    sub_1004BC024(v211);

    v212._countAndFlagsBits = 10;
    v212._object = 0xE100000000000000;
    sub_1004BC024(v212);
    sub_1004BC024(v115);

    v115._countAndFlagsBits = 0x746E697420202020;
    v115._object = 0xEB00000000203A20;
    v120._countAndFlagsBits = v86;
    v90 = v89;
    v213._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v213);

    v214._countAndFlagsBits = 10;
    v214._object = 0xE100000000000000;
    sub_1004BC024(v214);
    sub_1004BC024(v115);

    v215._countAndFlagsBits = 687392;
    v215._object = 0xE300000000000000;
    sub_1004BC024(v215);
    sub_1002C8BF0(v88, v87, v86);
  }

  v91 = (v1 + v8[16]);
  v92 = *v91;
  v93 = *(v91 + 1);
  v94 = *(v91 + 2);
  v95 = v91[24];
  v216._countAndFlagsBits = 0x1000000000000015;
  v216._object = 0x8000000100507A00;
  sub_1004BC024(v216);
  v115._countAndFlagsBits = 0xD00000000000001BLL;
  v115._object = 0x8000000100507A20;
  if (v92)
  {
    v96._countAndFlagsBits = 1702195828;
  }

  else
  {
    v96._countAndFlagsBits = 0x65736C6166;
  }

  if (v92)
  {
    v97 = 0xE400000000000000;
  }

  else
  {
    v97 = 0xE500000000000000;
  }

  v96._object = v97;
  sub_1004BC024(v96);

  v217._countAndFlagsBits = 10;
  v217._object = 0xE100000000000000;
  sub_1004BC024(v217);
  sub_1004BC024(v115);

  if (v93)
  {
    v115._countAndFlagsBits = 0xD000000000000021;
    v115._object = 0x8000000100507AF0;
    v120._countAndFlagsBits = v93;
    type metadata accessor for UIContentSizeCategory(0);
    v98 = v93;
    v218._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v218);

    v219._countAndFlagsBits = 10;
    v219._object = 0xE100000000000000;
    sub_1004BC024(v219);
    sub_1004BC024(v115);

    if (v94)
    {
LABEL_72:
      v115._countAndFlagsBits = 0xD000000000000021;
      v115._object = 0x8000000100507AC0;
      v120._countAndFlagsBits = v94;
      type metadata accessor for UIContentSizeCategory(0);
      v99 = v94;
      v220._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v220);

      v221._countAndFlagsBits = 10;
      v221._object = 0xE100000000000000;
      sub_1004BC024(v221);
      sub_1004BC024(v115);

      goto LABEL_75;
    }
  }

  else
  {
    v222._countAndFlagsBits = 0xD00000000000002DLL;
    v222._object = 0x8000000100507A40;
    sub_1004BC024(v222);
    if (v94)
    {
      goto LABEL_72;
    }
  }

  v223._countAndFlagsBits = 0xD00000000000002DLL;
  v223._object = 0x8000000100507A70;
  sub_1004BC024(v223);
LABEL_75:
  v115._countAndFlagsBits = 0xD00000000000001ELL;
  v115._object = 0x8000000100507AA0;
  if (v95)
  {
    v100._countAndFlagsBits = 1702195828;
  }

  else
  {
    v100._countAndFlagsBits = 0x65736C6166;
  }

  if (v95)
  {
    v101 = 0xE400000000000000;
  }

  else
  {
    v101 = 0xE500000000000000;
  }

  v100._object = v101;
  sub_1004BC024(v100);

  v224._countAndFlagsBits = 10;
  v224._object = 0xE100000000000000;
  sub_1004BC024(v224);
  sub_1004BC024(v115);

  v225._countAndFlagsBits = 687392;
  v225._object = 0xE300000000000000;
  sub_1004BC024(v225);
  v226._countAndFlagsBits = 41;
  v226._object = 0xE100000000000000;
  sub_1004BC024(v226);
  return v121;
}

uint64_t sub_1002C8B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100610D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C8B88(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002C8BF0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id sub_1002C8C00(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

id sub_1002C8C6C(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002C993C();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.normal;
}

id sub_1002C8E30(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002C993C();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_100609AC8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

id sub_1002C8FF4(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002C993C();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_100609AD0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

id sub_1002C91B8(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002C993C();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_1002C993C();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_100609AD8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

id sub_1002C937C(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002C993C();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002C993C();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      sub_1002C993C();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = sub_1004BD624();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_100609AE0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_100609AE8 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_100609AF0 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_100609AF8 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_100609B00 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t sub_1002C97DC(uint64_t a1, void *a2, id *a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  result = sub_1004BA304();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_100609B08 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

uint64_t sub_1002C98A4(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1002C9924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002C993C()
{
  result = qword_10060DF30;
  if (!qword_10060DF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060DF30);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  sub_100003ABC(&qword_10060EC20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C4D40;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = sub_1004BBE24();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009130(0, &unk_1006110B0);
    v9 = sub_1004BC284().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009130(0, &qword_10060AB80);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1002BE048(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  sub_100003ABC(&qword_10060EC20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C4D40;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = sub_1004BBE24();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009130(0, &unk_1006110B0);
    isa = sub_1004BC284().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009130(0, &qword_10060CFF0);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_1002BE048(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009130(0, &qword_10060AB88);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1002BE048(v7);
    return 0;
  }
}

uint64_t UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = sub_1004BBE24();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    sub_100009130(0, &unk_1006110B0);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100003ABC(&qword_10060EC20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004C51A0;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = sub_1004BC284().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  sub_100003ABC(&qword_10060EC20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C4D40;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = sub_1004BBE24();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009130(0, &unk_1006110B0);
    isa = sub_1004BC284().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009130(0, &qword_10060CFF0);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_1002BE048(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    sub_100009130(0, &qword_10060AB80);
    v5 = sub_1004BCFA4();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

UIMenu static UIMenu.lazy(title:image:options:cached:childrenProvider:)(uint64_t a1, void *a2, void *a3, NSString *a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_100003ABC(&qword_10060EC20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C4D40;
  if (a5)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v31 = sub_1002CA900;
    v32 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1002CA7D8;
    v30 = &unk_1005BFA78;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();

    v18 = [v17 elementWithProvider:v16];
    _Block_release(v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v31 = sub_1002D09A4;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1002CA7D8;
    v30 = &unk_1005BFA28;
    v21 = _Block_copy(&aBlock);

    v18 = [v19 elementWithUncachedProvider:v21];
    _Block_release(v21);
  }

  *(v14 + 32) = v18;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    a1 = 0;
    v22 = 0xE000000000000000;
  }

  sub_100009130(0, &qword_10060AB98);
  v23 = a3;

  v34._countAndFlagsBits = a1;
  v34._object = v22;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v33.value.super.isa = a3;
  v33.is_nil = 0;
  v24.value = a4;
  return sub_1004BCE54(v34, v35, v33, v24, 0xFFFFFFFFFFFFFFFFLL, v14, v26);
}

uint64_t sub_1002CA7A0()
{

  return swift_deallocObject();
}

uint64_t sub_1002CA7D8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1002D08DC, v4);
}

uint64_t sub_1002CA86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002CA884(uint64_t a1, uint64_t a2)
{
  sub_100009130(0, &qword_100611220);
  isa = sub_1004BC284().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4 = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_100003ABC(&qword_10060EC20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C4D40;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4;
  aBlock[4] = sub_1002CABBC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002CA7D8;
  aBlock[3] = &unk_1005BFAC8;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(v9 + 32) = v13;
  v19._countAndFlagsBits = countAndFlagsBits;
  v19._object = object;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  v14.value = v4;
  return sub_1004BCE54(v19, v20, v18, v14, 0xFFFFFFFFFFFFFFFFLL, v9, v16);
}

uint64_t sub_1002CAA74(void (*a1)(id *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004BD484();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      sub_1002CABC4(&v16, &v15, a4, &v14);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);
}

uint64_t sub_1002CABC4@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, NSString *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a4 = v6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = (v9 + 16);

  v11 = [v7 menuRepresentation];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v12;
    if (v13)
    {
      sub_1002CB0DC(v13, a3, v9, v7);
    }

    else
    {
      sub_1004BC274();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();
    }

    goto LABEL_26;
  }

  v15 = [v7 menu];
  if (!v15)
  {
    v17 = [v7 primaryAction];
    if (v17 && (v18 = v17, [v17 copy], v18, sub_1004BD284(), swift_unknownObjectRelease(), sub_100009130(0, &qword_10060AC30), (swift_dynamicCast() & 1) != 0))
    {
      v19 = v36;
    }

    else
    {
      v20 = v7;
      v21 = [v20 target];
      v22 = [v20 action];
      if (!v21)
      {

        goto LABEL_26;
      }

      v23 = v22;
      if (!v22)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      sub_100009130(0, &qword_10060AC30);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;

      v26 = sub_1004BCFD4();

      swift_unknownObjectRelease();
      v19 = v26;
      v27 = [v20 title];
      if (v27)
      {
        v28 = v27;
        sub_1004BBE64();
      }

      v29 = sub_1004BBE24();

      [v19 setTitle:v29];

      v30 = [v20 image];
      [v19 setImage:v30];
    }

    v31 = [v7 title];
    if (v31)
    {
      v32 = v31;
      sub_1004BBE64();
    }

    v33 = sub_1004BBE24();

    [v19 setTitle:v33];

    v34 = [v7 image];
    [v19 setImage:v34];

    v35 = v19;
    sub_1004BC274();
    if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();

    goto LABEL_26;
  }

  v16 = v15;
  sub_1002CB0DC(v15, a3, v9, v7);

LABEL_26:
  swift_beginAccess();
  *a4 = *(v9 + 16);
}

uint64_t sub_1002CB0DC(id a1, NSString *a2, uint64_t a3, void *a4)
{
  if ((a2 & 1) == 0)
  {
    v8 = [a1 title];
    v9 = sub_1004BBE64();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = sub_1004BBE64();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = sub_1004BBE64();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  sub_100009130(0, &qword_10060AB98);
  v24 = [a1 children];
  sub_100009130(0, &qword_100611220);
  v25 = sub_1004BC2A4();

  v30._countAndFlagsBits = v16;
  v30._object = v18;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  v26.value = a2;
  sub_1004BCE54(v30, v31, v29, v26, 0xFFFFFFFFFFFFFFFFLL, v25, v28);
  swift_beginAccess();
LABEL_17:
  sub_1004BC274();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = sub_1004BCFD4();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    sub_1004BBE64();
  }

  v12 = sub_1004BBE24();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

id *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1004BD484();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  sub_100009130(0, &qword_10060ABA0);
  v2 = sub_1004BC2A4();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = &unk_1004DC498;
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = sub_1004BD484();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        sub_1004BC274();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      sub_100009130(0, &qword_10060ABA8);
      v12 = sub_1004BC2A4();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_1004BD6A4();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = sub_1004BD6A4();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_1004BD6A4();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = sub_1004BD494();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_1004BD6A4();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            sub_1002CF880();
            for (j = 0; j != v21; ++j)
            {
              sub_100003ABC(&qword_10060ABB0);
              v25 = sub_10024DFAC(v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    sub_100009130(0, &qword_10060ABA8);
    v32 = sub_1004BC2A4();

    sub_1002CBC88(v32);
    return v43[0];
  }

  return v5;
}

uint64_t sub_1002CBB50(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1003BEA94(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_100003ABC(&qword_10060A210);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002CBC88(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004BD6A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1004BD6A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10013232C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1002CF6F0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1002CBD78(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1003BEEBC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_1004BB7D4();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_100009130(0, &unk_1006111F0);
  return sub_1004BCFA4() & 1;
}

uint64_t sub_1002CBF0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_100009130(0, &unk_1006111F0);
  return sub_1004BCFA4() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a6)
  {
    v47 = a3;
    v11 = v8;

    v45 = a1;
    v12 = sub_1004BCA04();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    sub_100003ABC(&qword_10060EC20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1004C4D40;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1002D0984;
    *(v16 + 24) = v13;
    aBlock[4] = sub_1002D09A4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002CA7D8;
    aBlock[3] = &unk_1005BFB90;
    v17 = v8;
    v18 = _Block_copy(aBlock);
    v43 = v11;
    v19 = v12;

    v20 = [v15 elementWithUncachedProvider:v18];
    _Block_release(v18);
    *(v14 + 32) = v20;
    if (a2)
    {
      v21 = v45;
    }

    else
    {
      v21 = 0;
    }

    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    sub_100009130(0, &qword_10060AB98);
    v23 = v47;
    v56._countAndFlagsBits = v21;
    v56._object = v22;
    v58.value._countAndFlagsBits = 0;
    v58.value._object = 0;
    v53.value.super.isa = a3;
    v53.is_nil = 0;
    v24.value = 0;
    isa = sub_1004BCE54(v56, v58, v53, v24, 0xFFFFFFFFFFFFFFFFLL, v14, v43).super.super.isa;

    [(objc_class *)v19 setMenuRepresentation:isa];
  }

  else
  {
    v27 = a5;
    v28 = [v27 title];
    v29 = sub_1004BBE64();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      v33 = v8;

      v34 = sub_1004BBE24();

      [v27 setTitle:v34];

      v8 = v33;
    }

    v35 = [v27 image];
    if (v35)
    {
    }

    else
    {
      [v27 setImage:a3];
    }

    v36 = v27;
    v57.value._countAndFlagsBits = 0;
    v57.value._object = 0;
    v52.value.super.isa = 0;
    v37 = v8;
    v52.is_nil = v8;
    v54.value.super.super.isa = 0;
    v19 = sub_1004BC9F4(v57, v52, v54, v55).super.super.isa;
    v38 = v19;
    if (!a2)
    {
      v39 = [v36 title];
      sub_1004BBE64();
    }

    v40 = sub_1004BBE24();

    [(objc_class *)v19 setTitle:v40];

    v41 = a3;
    if (!a3)
    {
      v41 = [v36 image];
    }

    v23 = a3;
    [(objc_class *)v19 setImage:v41];

    [(objc_class *)v19 setMenuRepresentation:v36];
    v17 = v37;
  }

  [(objc_class *)v19 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8);

  return v19;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v41 = *&image.is_nil;
  isa = image.value.super.isa;
  v39 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  sub_100009130(0, &qword_10060AB98);
  sub_100003ABC(&qword_10060EC20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C4D40;
  v38 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v47 = sub_1002D090C;
  v48 = v13;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1002CA7D8;
  v46 = &unk_1005BFBE0;
  v14 = _Block_copy(&aBlock);

  v15 = [v38 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(v12 + 32) = v15;
  v51._countAndFlagsBits = style;
  v51._object = countAndFlagsBits;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v49.value.super.isa = 0;
  v49.is_nil = 0;
  v16.value = 1;
  v17 = sub_1004BCE54(v51, v53, v49, v16, 0xFFFFFFFFFFFFFFFFLL, v12, v35).super.super.isa;
  v37 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = sub_1004BCA04();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004C4D40;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002D0984;
  *(v24 + 24) = v22;
  v47 = sub_1002D09A4;
  v48 = v24;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1002CA7D8;
  v46 = &unk_1005BFC58;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v38 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v39;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v37;
  v52._countAndFlagsBits = v29;
  v52._object = v30;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v50.value.super.isa = isa;
  v50.is_nil = 0;
  v32.value = 0;
  v33 = sub_1004BCE54(v52, v54, v50, v32, 0xFFFFFFFFFFFFFFFFLL, v23, v36.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v41];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v39 = sub_1004BBE64();
    v10 = v9;
  }

  else
  {
    v39 = 0;
    v10 = 0;
  }

  v36 = [(objc_class *)v6 image];

  v37 = [(objc_class *)v6 style];
  v38 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v39;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  sub_100009130(0, &qword_10060AB98);
  sub_100003ABC(&qword_10060EC20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004C4D40;
  v35 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v44 = sub_1002D090C;
  v45 = v12;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1002CA7D8;
  v43 = &unk_1005BFCA8;
  v13 = _Block_copy(&aBlock);

  v14 = [v35 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(v11 + 32) = v14;
  v48._countAndFlagsBits = countAndFlagsBits;
  v48._object = object;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  v15.value = 1;
  isa = sub_1004BCE54(v48, v50, v46, v15, 0xFFFFFFFFFFFFFFFFLL, v11, v32).super.super.isa;

  v17 = isa;
  v34 = v36;
  v18 = v17;
  v19 = sub_1004BCA04();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C4D40;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002D0984;
  *(v22 + 24) = v20;
  v44 = sub_1002D09A4;
  v45 = v22;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1002CA7D8;
  v43 = &unk_1005BFD20;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v35 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v34;
  v49._countAndFlagsBits = v27;
  v49._object = v10;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v47.value.super.isa = v36;
  v47.is_nil = 0;
  v29.value = 0;
  v30 = sub_1004BCE54(v49, v51, v47, v29, 0xFFFFFFFFFFFFFFFFLL, v21, v33.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v37];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v71 = v8;
    v70 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          sub_1002B3FDC(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v41 = [v3 title];
          if (v41)
          {
            v42 = v41;
            v69 = sub_1004BBE64();
            v44 = v43;
          }

          else
          {
            v69 = 0;
            v44 = 0;
          }

          v45 = [v3 image];
          v46 = swift_allocObject();
          *(v46 + 16) = v10;
          sub_100003ABC(&qword_10060EC20);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1004C4D40;
          v48 = objc_opt_self();
          v49 = swift_allocObject();
          *(v49 + 16) = sub_1002CF8E4;
          *(v49 + 24) = v46;
          aBlock[4] = sub_1002D09A4;
          aBlock[5] = v49;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1002CA7D8;
          aBlock[3] = &unk_1005BFD98;
          v50 = _Block_copy(aBlock);
          sub_1002B4294(a1, a2);

          v51 = [v48 elementWithUncachedProvider:v50];
          _Block_release(v50);
          *(v47 + 32) = v51;
          if (v44)
          {
            v52 = v69;
          }

          else
          {
            v52 = 0;
          }

          if (v44)
          {
            v53 = v44;
          }

          else
          {
            v53 = 0xE000000000000000;
          }

          sub_100009130(0, &qword_10060AB98);
          v76._countAndFlagsBits = v52;
          v76._object = v53;
          v77.value._countAndFlagsBits = 0;
          v77.value._object = 0;
          v75.value.super.isa = v45;
          v75.is_nil = 0;
          v54.value = 0;
          isa = sub_1004BCE54(v76, v77, v75, v54, 0xFFFFFFFFFFFFFFFFLL, v47, v67).super.super.isa;

          [v3 setMenuRepresentation:isa];
          sub_1002B3FDC(v70, v71);
          sub_1002B3FDC(a1, a2);

          goto LABEL_61;
        }
      }

      sub_1002B3FDC(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v40 = v10;
          sub_10003CC4C(v39);
        }
      }

      goto LABEL_42;
    }

    v68 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      sub_1004BBE64();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = sub_1004BBE64();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      sub_1004BBE64();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v71;
          goto LABEL_57;
        }
      }

      v56 = [v3 customView];
      v32 = v71;
      if (v56)
      {
        v57 = v56;
        type metadata accessor for SymbolButton(0);
        v58 = swift_dynamicCastClass();
        if (v58)
        {
          v59 = (v58 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v60 = *v59;
          *v59 = 0;
          v59[1] = 0;
          sub_10003CC4C(v60);
        }
      }

LABEL_57:
      if ((v68 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v63 = [v3 menuRepresentation];
          if (!v63)
          {

            sub_1002B3FDC(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          v64 = v63;
          sub_100009130(0, &qword_100611220);
          v65 = v70;
          v66 = sub_1004BCFA4();

          sub_1002B3FDC(v70, v32);
          if (v66)
          {
            [v3 setMenuRepresentation:a1];

            sub_1002B3FDC(a1, a2);
            sub_1002B3FDC(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          sub_1002B3FDC(v70, v32);
LABEL_61:
          v61 = a1;
          v62 = a2;
LABEL_62:
          sub_1002B3FDC(v61, v62);
          return;
        }

        sub_1002B3FDC(v70, v32);
      }

      goto LABEL_61;
    }

    v27 = sub_1004BBE24();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v72 = [v3 customView];
  if (v72)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      sub_1002B3FDC(v14, v8);

      return;
    }
  }

  sub_1002B3FDC(v14, v8);
}

uint64_t sub_1002CD55C(void *a1)
{
  v1 = [a1 children];
  sub_100009130(0, &qword_100611220);
  v2 = sub_1004BC2A4();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_1002CD650;
}

void sub_1002CD650(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1002B4294(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    sub_1002B3FDC(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

id *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  sub_100009130(0, &qword_10060ABA8);
  v2 = sub_1004BC2A4();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1004BD484();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      sub_1002CD88C(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void sub_1002CD88C(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  sub_100003ABC(&qword_10060EC20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C4D40;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_100009130(0, &qword_10060ABA8);
  v8 = v5;
  isa = sub_1004BC284().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  sub_1004BC274();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = sub_1004BC2A4();

  if (v12 >> 62)
  {
    v13 = sub_1004BD6A4();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = sub_1004BD484();
LABEL_10:
      v17 = v16;

      v18 = sub_1004BCFA4();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C4D40;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = sub_1004BC284().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  sub_1004BC274();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = sub_1004BCFD4();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002CDC90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_1002CDCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3 = _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(1, sub_1002CF900, v2);

  return v3;
}

uint64_t sub_1002CDDAC(uint64_t a1)
{
  sub_100009130(0, &qword_10060AB98);
  sub_100003ABC(&qword_10060EC20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C4D40;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = sub_1002D090C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002CA7D8;
  aBlock[3] = &unk_1005C00A8;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(v2 + 32) = v6;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  v7.value = 1;
  isa = sub_1004BCE54(v15, v16, v14, v7, 0xFFFFFFFFFFFFFFFFLL, v2, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  sub_100009130(0, &qword_100611220);
  v10 = sub_1004BC2A4();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  v2 = sub_100003ABC(&qword_10060ABC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_1004BD084();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BD0A4();
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    sub_1004BD064();
    if (v12(v7, 1, v8) != 1)
    {
      sub_100007214(v7, &qword_10060ABC0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  a1(v11);
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_1004BD0B4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = sub_1004BCCB4();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1004BBDA4();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v9 = qword_100618C60;
  sub_1004B6DF4();
  sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  v10 = objc_opt_self();
  v11 = sub_1004BBE24();
  v12 = [v10 keyCommandWithInput:v11 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = sub_1004BBE24();

  [v13 setTitle:v14];

  if (qword_100609B10 != -1)
  {
    swift_once();
  }

  v15 = qword_10060AB90;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002D0680;
  *(v16 + 24) = v8;
  v19[1] = sub_1002D0688;
  v19[2] = v16;

  sub_100003ABC(&qword_10060ABC8);
  v17 = sub_1004BDA54();
  objc_setAssociatedObject(v13, v15, v17, 3);

  swift_unknownObjectRelease();

  return v13;
}

void sub_1002CE76C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActive:1];
    v2 = [v1 searchBar];
    [v2 becomeFirstResponder];

    v3 = UISearchController.searchText.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = [v1 searchBar];
        v9 = [v8 searchTextField];

        [v9 selectAll:v1];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = sub_1004B65B4();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_1004BBE64();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    sub_1004B65A4();
    sub_1002C4D1C();
    v11 = sub_1004BD214();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_1004BBE24();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = sub_1004BBE24();

  [v13 setTitle:v14];

  v15 = qword_100609B10;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_10060AB90;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  sub_100003ABC(&qword_10060ABC8);
  v18 = sub_1004BDA54();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100609B10 != -1)
  {
    swift_once();
  }

  v6 = qword_10060AB90;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_100003ABC(&qword_10060ABC8);
    v8 = sub_1004BDA54();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_10003CC4C(a1);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (qword_100609B10 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_10060AB90))
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100003ABC(&qword_10060ABC8);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_1002D06B4;
    }
  }

  else
  {
    sub_100007214(v5, &qword_100611260);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return sub_1002CEE50;
}

void sub_1002CEE50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_10002F518(**a1);
    if (qword_100609B10 != -1)
    {
      swift_once();
    }

    v5 = qword_10060AB90;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_1002D09A0;
      v2[3] = v6;

      sub_100003ABC(&qword_10060ABC8);
      v7 = sub_1004BDA54();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_10003CC4C(v4);
    v11 = *v2;
  }

  else
  {
    if (qword_100609B10 != -1)
    {
      swift_once();
    }

    v8 = qword_10060AB90;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_1002D09A0;
      v2[3] = v9;

      sub_100003ABC(&qword_10060ABC8);
      v10 = sub_1004BDA54();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
  }

  sub_10003CC4C(v11);

  free(v2);
}

uint64_t sub_1002CF038()
{
  result = swift_slowAlloc();
  qword_10060AB90 = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void sub_1002CF0AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v4 = v3;
    v3(v5);

    sub_10003CC4C(v4);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  sub_100003ABC(&qword_10060ABD0);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_1004C50C0;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = sub_1002CFA20(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_10060ABD8);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_100003ABC(&qword_10060ABE0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1004C50A0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100003ABC(&qword_10060ABE8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C50A0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_100003ABC(&qword_10060ABF0);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1002CFB48(v8);
  swift_setDeallocating();
  sub_100007214(v8 + 32, &qword_10060ABF8);
  _s3__C13AttributeNameVMa_0(0);
  sub_1002D06EC();
  isa = sub_1004BBC24().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002D077C;
}

uint64_t sub_1002CF3FC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_100003ABC(&unk_100611210);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1004B81C4();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (a4)
  {
    v23 = a4;
    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    Width = CGRectGetWidth(v40);
    [v23 frame];
    v26 = Width - v25;
    v41.origin.x = v16;
    v41.origin.y = v18;
    v41.size.width = v20;
    v41.size.height = v22;
    Height = CGRectGetHeight(v41);
    [v23 frame];
    v29 = v28;

    v16 = sub_100226A94(v16, v18, v20, v22, (Height - v29) * 0.5, v26 * 0.5);
    v18 = v30;
    v20 = v31;
    v22 = v32;
  }

  (*(v11 + 16))(v14, a2, v10);
  v42.origin.x = v16;
  v42.origin.y = v18;
  v42.size.width = v20;
  v42.size.height = v22;
  v33 = CGRectGetWidth(v42);
  v43.origin.x = v16;
  v43.origin.y = v18;
  v43.size.width = v20;
  v43.size.height = v22;
  v34 = CGRectGetHeight(v43);
  if (v34 < v33)
  {
    v33 = v34;
  }

  sub_100009130(0, &qword_10060AC18);
  *v9 = v16;
  *(v9 + 1) = v18;
  *(v9 + 2) = v20;
  *(v9 + 3) = v22;
  *(v9 + 4) = v33 * 0.5;
  v35 = enum case for UIPointerShape.roundedRect(_:);
  v36 = sub_1004B8194();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v9, v35, v36);
  (*(v37 + 56))(v9, 0, 1, v36);
  return sub_1004BC9D4();
}

uint64_t sub_1002CF6F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002CF880();
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_10060ABB0);
            v9 = sub_10024DFAC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009130(0, &qword_10060ABA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002CF880()
{
  result = qword_10060ABB8;
  if (!qword_10060ABB8)
  {
    sub_100003B68(&qword_10060ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ABB8);
  }

  return result;
}

unint64_t sub_1002CF908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AC38);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10003E428(v7, v8);
      result = sub_1003740CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002CFA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AC28);
    v3 = sub_1004BD6F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F778(v4, &v11, &qword_10060ABD8);
      v5 = v11;
      result = sub_1003761D0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003E13C(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002CFB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AC20);
    v3 = sub_1004BD6F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000F778(v4, &v11, &qword_10060ABF8);
      v5 = v11;
      result = sub_1003761D0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003E13C(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002CFC70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AC10);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1003740CC(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002CFD74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AC08);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003740CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002CFE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_10060AC00);
    v3 = sub_1004BD6F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1003741B4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Class _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(NSString *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B6E64();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1004BBE14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &aBlock[-1] - v12;
  sub_1004BBDA4();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v14 = qword_100618C60;
  sub_1004B6DF4();
  v15 = sub_1004BBED4();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  sub_100009130(0, &qword_10060ABA8);
  v18 = sub_1004BBE24();
  v19 = [objc_opt_self() systemImageNamed:v18];

  sub_100003ABC(&qword_10060EC20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C4D40;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_1002D09A4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002CA7D8;
  aBlock[3] = &unk_1005C0058;
  v23 = _Block_copy(aBlock);

  v24 = [v21 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v20 + 32) = v24;
  sub_100009130(0, &qword_10060AB98);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  v25.value = a1;
  isa = sub_1004BCE54(v36, v37, v35, v25, 0xFFFFFFFFFFFFFFFFLL, v20, v32).super.super.isa;
  v27 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  v30 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v15, v17, v19, 0, isa, 1, v28, v29);
  [(objc_class *)v30 setPreferredMenuElementOrder:2];
  return v30;
}

id _sSo12UIKeyCommandC11MusicCoreUIE07findKeyB0yAByABcFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  sub_1004BBDA4();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v12 = qword_100618C60;
  sub_1004B6DF4();
  sub_1004BBED4();
  (*(v6 + 8))(v11, v5);
  v13 = objc_opt_self();
  v14 = sub_1004BBE24();
  v15 = [v13 keyCommandWithInput:v14 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v16 = v15;
  v17 = sub_1004BBE24();

  [v16 setTitle:v17];

  if (qword_100609B10 != -1)
  {
    swift_once();
  }

  v18 = qword_10060AB90;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v22[1] = sub_1002D09A0;
  v22[2] = v19;

  sub_100003ABC(&qword_10060ABC8);
  v20 = sub_1004BDA54();
  objc_setAssociatedObject(v16, v18, v20, 3);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1002D06B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1002D06EC()
{
  result = qword_10060A1B0;
  if (!qword_10060A1B0)
  {
    _s3__C13AttributeNameVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060A1B0);
  }

  return result;
}

uint64_t sub_1002D0744()
{

  return swift_deallocObject();
}

uint64_t sub_1002D07A0(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();
}

uint64_t sub_1002D07FC()
{

  return swift_deallocObject();
}

uint64_t sub_1002D0834()
{

  return swift_deallocObject();
}

uint64_t sub_1002D086C()
{

  return swift_deallocObject();
}

uint64_t sub_1002D08A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (qword_100609B18 != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void sub_1002D0A4C()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = sub_1002D0B34;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100399BF8;
  v5[3] = &unk_1005C0148;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_100618F08 = v3 & 1;
  qword_100618F10 = v4;
}

id sub_1002D0B34(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

uint64_t static UIView.Border.artwork.getter()
{
  if (qword_100609B18 != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_100618F10;
  return v0;
}

void sub_1002D0C14()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10060AC40 = v1 == 6;
}

uint64_t sub_1002D0C78()
{
  v0 = sub_1004BCEE4();
  sub_100007108(v0, static UIView.Corner.extraSmall);
  sub_100007084(v0, static UIView.Corner.extraSmall);
  if (qword_100609B20 != -1)
  {
    swift_once();
  }

  return sub_1004BCE74();
}

uint64_t sub_1002D0D64()
{
  v0 = sub_1004BCEE4();
  sub_100007108(v0, static UIView.Corner.small);
  sub_100007084(v0, static UIView.Corner.small);
  if (qword_100609B20 != -1)
  {
    swift_once();
  }

  return sub_1004BCE74();
}

uint64_t sub_1002D0E2C()
{
  v0 = sub_1004BCEE4();
  sub_100007108(v0, static UIView.Corner.medium);
  sub_100007084(v0, static UIView.Corner.medium);
  if (qword_100609B20 != -1)
  {
    swift_once();
  }

  return sub_1004BCE74();
}

uint64_t sub_1002D0EF4()
{
  v0 = sub_1004BCEE4();
  sub_100007108(v0, static UIView.Corner.large);
  sub_100007084(v0, static UIView.Corner.large);
  if (qword_100609B20 != -1)
  {
    swift_once();
  }

  return sub_1004BCE74();
}

uint64_t sub_1002D0FE0()
{
  v0 = sub_1004BCEE4();
  sub_100007108(v0, static UIView.Corner.extraLarge);
  sub_100007084(v0, static UIView.Corner.extraLarge);
  if (qword_100609B20 != -1)
  {
    swift_once();
  }

  return sub_1004BCE74();
}

uint64_t sub_1002D10A8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1004BCEE4();

  return sub_100007084(v3, a2);
}

uint64_t sub_1002D1120@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1004BCEE4();
  v6 = sub_100007084(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1002D11B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (qword_100609B50 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id sub_1002D12B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_1002C993C();
  if (v7 == 2)
  {
    v8 = 250;
    v9 = 45;
    v10 = 72;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

void *HI.Color.prominentBackgroundColor.unsafeMutableAddressor()
{
  if (qword_100609B58 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t sub_1002D13B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D1468@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_1002D1494@<D0>(double *a1@<X8>)
{
  result = dbl_1004DCA70[*v1];
  *a1 = result;
  return result;
}

Swift::Int sub_1002D157C(uint64_t a1, char a2)
{
  sub_1004BDBA4();
  sub_1004BDBE4(qword_1004DCA30[a2]);
  return sub_1004BDBF4();
}

double sub_1002D15CC(unsigned __int8 a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_1004DC9F0[a1];
      }

      v4 = a1;
      result = 3.0;
      v5 = 4.0;
      if (a1 != 2)
      {
        v5 = 2.0;
      }

      v6 = 1.0;
      if (a2)
      {
        v6 = 3.0;
      }

      if (!a1)
      {
        result = v6;
      }

      goto LABEL_49;
    }

    if (!a3)
    {
      return dbl_1004DC9D0[a1];
    }

    v4 = a1;
    result = 1.0;
    v5 = 3.0;
    v11 = 4.0;
    if ((a2 & 1) == 0)
    {
      v11 = 1.0;
    }

    if (a1 != 2)
    {
      v5 = v11;
    }

    v12 = 2.0;
LABEL_47:
    if (v4)
    {
      result = v12;
    }

LABEL_49:
    if (v4 > 1)
    {
      return v5;
    }

    return result;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      return dbl_1004DCA10[a1];
    }

    v4 = a1;
    result = 3.0;
    v5 = 7.0;
    v13 = 5.0;
    if (a2)
    {
      v13 = 9.0;
    }

    if (a1 != 2)
    {
      v5 = v13;
    }

    v12 = 6.0;
    goto LABEL_47;
  }

  result = 7.0;
  v7 = 8.0;
  v8 = 6.0;
  if (a2)
  {
    v8 = 28.0;
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  v9 = 4.0;
  if (a2)
  {
    v9 = 7.0;
  }

  if (a1)
  {
    v9 = 7.0;
  }

  if (a1 <= 1u)
  {
    v7 = v9;
  }

  v10 = 5.0;
  if (a2)
  {
    result = 15.0;
  }

  if (a1 == 2)
  {
    result = 12.0;
  }

  if (a1)
  {
    v10 = 10.0;
  }

  if (a1 <= 1u)
  {
    result = v10;
  }

  if (a3 == 6)
  {
    return v7;
  }

  return result;
}

void HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a5 <= 374.0)
  {
    v13 = 0;
    v10 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v10 = 12.0;
  v11 = 20.0;
  if (a5 <= 500.0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 <= 726.0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v10 = 20.0;
  if (a5 <= 981.0)
  {
    v13 = 3;
LABEL_18:
    v11 = 34.0;
    goto LABEL_19;
  }

  if (a5 <= 1194.0)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (a5 <= 2500.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (a5 > 1500.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 5;
  }

  v11 = 34.0;
LABEL_19:
  v14 = a5 - (v11 + v11);
  if (a3)
  {
    v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v15 scaledValueForValue:1.0];
    v17 = v16;

    v18 = round(sub_1002D15CC(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = sub_1002D15CC(a1, a2 & 1, v13);
  }

  v19 = 1.0;
  if (v13 <= 4)
  {
    v20 = 3.0;
    if (((a1 == 3) & a2) == 0)
    {
      v20 = 1.0;
    }

    v22 = 2.0;
    if (((a1 == 0) & a2) == 0)
    {
      v22 = 1.0;
    }

    if (v13 == 2)
    {
      v19 = v22;
    }

    v21 = v13 == 1;
    goto LABEL_40;
  }

  if (v13 == 5)
  {
    v23 = ((a1 == 3) & a2) == 0;
  }

  else
  {
    if (v13 != 6)
    {
      v20 = 1.0;
      if (((a1 == 3) & a2) != 0)
      {
        v20 = 2.0;
      }

      v21 = v13 == 7;
LABEL_40:
      if (v21)
      {
        v19 = v20;
      }

      goto LABEL_46;
    }

    if (a1)
    {
      v20 = 5.0;
      if ((a2 & 1) == 0)
      {
        v20 = 1.0;
      }

      v21 = a1 == 3;
      goto LABEL_40;
    }

    v23 = (a2 & 1) == 0;
  }

  if (!v23)
  {
    v19 = 2.0;
  }

LABEL_46:
  v24 = (v14 - v10 * (v18 + -1.0)) / v18 * v19;
  v25 = v19 + -1.0;
  if (v25 > 0.0)
  {
    v24 = v24 + v10 * v25;
  }

  v26 = v18 == 1.0 || v24 > 300.0;
  if ((a3 & 1) == 0)
  {
    v26 = 0;
  }

  *a4 = a5;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 25) = a1;
  *(a4 + 26) = a2 & 1;
  *(a4 + 32) = v14;
  *(a4 + 40) = v18;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
}

void HI.Grid.Metrics.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004BDBE4(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004BDBE4(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004BDBE4(*&v3);
  sub_1004BDBE4(qword_1004DCA30[*(v0 + 24)]);
  sub_1004BDBB4(*(v0 + 25));
  sub_1004BDBC4(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1004BDBE4(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1004BDBE4(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_1004BDBE4(*&v6);
  sub_1004BDBC4(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  sub_1004BDBA4();
  HI.Grid.Metrics.hash(into:)();
  return sub_1004BDBF4();
}

Swift::Int sub_1002D1BD4()
{
  sub_1004BDBA4();
  HI.Grid.Metrics.hash(into:)();
  return sub_1004BDBF4();
}

uint64_t sub_1002D1C10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (qword_100609B60 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double sub_1002D1DBC()
{
  if (qword_100609B60 != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_100618FB0 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (qword_100609B68 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (qword_100609B68 != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060AA68);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1004B8C94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1002D253C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1002D25AC(v4);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v8, enum case for DynamicTypeSize.accessibility1(_:), v5);
    sub_1002D2614();
    v12 = sub_1004BBD54();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if ((v12 & 1) == 0)
    {
      return 924.0;
    }
  }

  return 784.0;
}

uint64_t *HI.BottomPlayer.buttonSpacing.unsafeMutableAddressor()
{
  if (qword_100609B70 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (qword_100609B78 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double sub_1002D2200(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 > 3)
  {
    if (*(a2 + 24) > 5u)
    {
      if (v3 == 6)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) > 1u)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == *(a2 + 25) && ((*(a1 + 26) ^ *(a2 + 26)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return (*(a1 + 56) ^ *(a2 + 56) ^ 1) & 1;
  }

  return 0;
}

uint64_t _s11MusicCoreUI2HIO9SizeClassOyAE0B8Graphics7CGFloatVcfC_0(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 > 2500.0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  if (a1 > 1500.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 > 1194.0)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

uint64_t _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 500.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  if (a1 == 1194.0)
  {
    return 4;
  }

  if (a1 == 2501.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2500.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1500.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002D253C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D25AC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060AA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002D2614()
{
  result = qword_10060AC48;
  if (!qword_10060AC48)
  {
    sub_1004B8C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC48);
  }

  return result;
}

unint64_t sub_1002D269C()
{
  result = qword_10060AC60;
  if (!qword_10060AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC60);
  }

  return result;
}

unint64_t sub_1002D2728()
{
  result = qword_10060AC78;
  if (!qword_10060AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC78);
  }

  return result;
}

unint64_t sub_1002D2780()
{
  result = qword_10060AC80;
  if (!qword_10060AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC80);
  }

  return result;
}

__n128 sub_1002D2820(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002D283C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 26);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002D2890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 1;
    }
  }

  return result;
}

double sub_1002D2970(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == 6)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == 6)
    {
      return 512.0;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        return 512.0;
      }

      goto LABEL_9;
    }

    result = 712.0;
    if (a3 & 1 | (*&a1 <= 1194.0))
    {
      return 540.0;
    }
  }

  return result;
}

double static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = sub_1002D2970(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (qword_100609B80 != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&qword_100618FC8 + *&qword_100618FC8 > v11)
    {
      return v11 - (*&qword_100618FC8 + *&qword_100618FC8);
    }
  }

  return v8;
}

unint64_t sub_1002D2C14()
{
  result = qword_10060AC88;
  if (!qword_10060AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC88);
  }

  return result;
}

uint64_t sub_1002D2C8C()
{
  sub_1004BD404(42);

  v4._countAndFlagsBits = sub_1004BB344();
  sub_1004BC024(v4);

  v5._countAndFlagsBits = 0x64692E676E6F7320;
  v5._object = 0xE90000000000003DLL;
  sub_1004BC024(v5);
  sub_1004BB324();
  v0 = sub_1004BAD14();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_1004BC024(v6);

  v7._object = 0x8000000100507F00;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_1004BC024(v7);
  sub_1004BB2B4();
  sub_100003ABC(&qword_10060AD70);
  v8._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v8);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = sub_1004B6B04();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = sub_1004B80B4();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = sub_1004BBEB4();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = sub_1004BB384();
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(sub_1002D302C, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_10060ACB8);
  v2[4] = swift_task_alloc();
  v3 = sub_1004BB384();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002D5D28, 0, 0);
}

uint64_t sub_1002D302C()
{
  v40 = v0;
  if (sub_1004BB374() & 1) != 0 || (sub_1004BB284())
  {
    sub_100003ABC(&qword_10060EC20);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_1004C4D40;
    sub_100003ABC(&qword_10060AC98);
    *(v1 + 32) = sub_1004BA9D4();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = sub_1002DB994();
    *v2 = v0;
    v2[1] = sub_1002D34A4;
    v4 = v0[88];
    v5 = v0[78];

    return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Song, &protocol witness table for Song, v3);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[72];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[65];
    v13 = v0[64];
    v14 = Logger.lyrics.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v14, v11);
    (*(v7 + 16))(v6, v13, v8);
    v15 = v12;
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[83];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[72];
    v23 = v0[70];
    v24 = v0[69];
    if (v18)
    {
      v38 = v0[72];
      v25 = v0[65];
      v37 = v0[69];
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v0[57] = v25;
      v27 = sub_1004BBF04();
      v29 = sub_1002C4260(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = sub_1002D2C8C();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = sub_1002C4260(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    sub_1002DB940();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1002D34A4()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1002D4CE8;
  }

  else
  {

    v2 = sub_1002D35C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D35C0()
{
  v137 = v0;
  v1 = sub_1004BB264();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = sub_1004BBE24();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (String.trim()(), v9 = sub_1002D56AC(), , (v9 & 1) != 0) && (v10 = *(v0 + 616), v11 = *(v0 + 608), v12 = *(v0 + 600), sub_1004BBEA4(), v13 = sub_1004BBE74(), v15 = v14, *(v0 + 736) = v13, *(v0 + 744) = v14, (*(v11 + 8))(v10, v12), v15 >> 60 != 15))
      {

        v113 = objc_allocWithZone(MSVLyricsTTMLParser);
        sub_10003E428(v13, v15);
        isa = sub_1004B6B64().super.isa;
        v115 = [v113 initWithTTMLData:isa];
        *(v0 + 752) = v115;

        sub_100004D7C(v13, v15);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_1002D44C0;
        v116 = swift_continuation_init();
        *(v0 + 392) = sub_100003ABC(&qword_10060ACB0);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_1002D5808;
        *(v0 + 360) = &unk_1005C0530;
        *(v0 + 368) = v116;
        [v115 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v16 = *(v0 + 8);

        return v16(v3, v4, 0);
      }
    }
  }

  if ((sub_1004BB374() & 1) == 0)
  {
    v53 = *(v0 + 704);
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 632);
    v57 = *(v0 + 624);
    v58 = *(v0 + 592);
    v59 = *(v0 + 560);
    v60 = *(v0 + 552);
    v130 = *(v0 + 680);
    v134 = *(v0 + 520);
    v61 = *(v0 + 512);
    v62 = Logger.lyrics.unsafeMutableAddressor();
    (*(v59 + 16))(v58, v62, v60);
    v63 = *(v56 + 16);
    v63(v54, v61, v57);
    v63(v55, v53, v57);
    v63(v130, v61, v57);
    v64 = v134;
    v65 = sub_1004B8094();
    v66 = sub_1004BC9A4();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 696);
    v69 = *(v0 + 688);
    v135 = *(v0 + 680);
    v70 = *(v0 + 632);
    v71 = *(v0 + 624);
    v72 = *(v0 + 592);
    v73 = *(v0 + 560);
    v74 = *(v0 + 552);
    if (v67)
    {
      v131 = *(v0 + 592);
      v75 = *(v0 + 520);
      v129 = *(v0 + 552);
      v76 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v76 = 136446978;
      *(v0 + 464) = v75;
      v77 = sub_1004BBF04();
      v125 = v66;
      v79 = sub_1002C4260(v77, v78, v136);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2082;
      v80 = sub_1004BB284();
      if (v80)
      {
        v81 = 1702195828;
      }

      else
      {
        v81 = 0x65736C6166;
      }

      if (v80)
      {
        v82 = 0xE400000000000000;
      }

      else
      {
        v82 = 0xE500000000000000;
      }

      loga = v65;
      v83 = *(v70 + 8);
      v83(v68, v71);
      v84 = sub_1002C4260(v81, v82, v136);

      *(v76 + 14) = v84;
      *(v76 + 22) = 2082;
      *(v0 + 424) = sub_1004BB264();
      *(v0 + 432) = v85;
      sub_100003ABC(&qword_100610D60);
      v86 = sub_1004BBF04();
      v88 = v87;
      v83(v69, v71);
      v89 = sub_1002C4260(v86, v88, v136);

      *(v76 + 24) = v89;
      *(v76 + 32) = 2082;
      v90 = sub_1002D2C8C();
      v92 = v91;
      v83(v135, v71);
      v93 = sub_1002C4260(v90, v92, v136);

      *(v76 + 34) = v93;
      _os_log_impl(&_mh_execute_header, loga, v125, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v76, 0x2Au);
      swift_arrayDestroy();

      (*(v73 + 8))(v131, v129);
    }

    else
    {

      v83 = *(v70 + 8);
      v83(v135, v71);
      v83(v69, v71);
      v83(v68, v71);
      (*(v73 + 8))(v72, v74);
    }

    v106 = *(v0 + 704);
    v107 = *(v0 + 624);
    sub_1002DB940();
    swift_allocError();
    *v108 = 1;
    swift_willThrow();
    v83(v106, v107);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter((v0 + 208));
  sub_100051DEC(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);
    v21 = *(v0 + 584);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v132 = *(v0 + 520);
    v24 = *(v0 + 512);
    v25 = [objc_opt_self() sharedController];
    v26 = [v25 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter((v0 + 80));
    sub_100051DEC(v0 + 80);
    v128 = *(v0 + 88);
    v27 = Logger.lyrics.unsafeMutableAddressor();
    (*(v22 + 16))(v21, v27, v23);
    (*(v19 + 16))(v18, v24, v20);
    v28 = v132;
    v29 = v26;
    v30 = sub_1004B8094();
    v31 = sub_1004BC9A4();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 672);
    v34 = *(v0 + 632);
    v35 = *(v0 + 624);
    v36 = *(v0 + 584);
    v37 = *(v0 + 560);
    v38 = *(v0 + 552);
    if (v32)
    {
      v127 = v31;
      v39 = *(v0 + 520);
      log = *(v0 + 624);
      v40 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v40 = 136446978;
      *(v0 + 472) = v39;
      v41 = sub_1004BBF04();
      v133 = v36;
      v126 = v38;
      v43 = sub_1002C4260(v41, v42, v136);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v0 + 480) = v29;
      v44 = v29;
      sub_100003ABC(&qword_10060ACA8);
      v45 = sub_1004BBF04();
      v47 = sub_1002C4260(v45, v46, v136);

      *(v40 + 14) = v47;
      *(v40 + 22) = 1026;
      *(v40 + 24) = WORD1(v128) & 1;
      *(v40 + 28) = 2082;
      v48 = sub_1002D2C8C();
      v50 = v49;
      v51 = *(v34 + 8);
      v51(v33, log);
      v52 = sub_1002C4260(v48, v50, v136);

      *(v40 + 30) = v52;
      _os_log_impl(&_mh_execute_header, v30, v127, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v40, 0x26u);
      swift_arrayDestroy();

      (*(v37 + 8))(v133, v126);
    }

    else
    {

      v51 = *(v34 + 8);
      v51(v33, v35);
      (*(v37 + 8))(v36, v38);
    }

    v109 = *(v0 + 704);
    v110 = *(v0 + 624);
    sub_1002DB940();
    swift_allocError();
    *v111 = 2;
    swift_willThrow();

    v51(v109, v110);
LABEL_36:

    v112 = *(v0 + 8);

    return v112();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v94 = sub_1004BB2B4();
  *(v0 + 768) = v95;
  if (!v95)
  {
    goto LABEL_29;
  }

  v96 = v94;
  v97 = v95;
  v98 = *(v0 + 728);
  sub_1004BD404(30);

  v136[0] = 0xD000000000000017;
  v136[1] = 0x8000000100507E20;
  v139._countAndFlagsBits = v96;
  v139._object = v97;
  sub_1004BC024(v139);
  v140._countAndFlagsBits = 0x6C6D74742ELL;
  v140._object = 0xE500000000000000;
  sub_1004BC024(v140);
  sub_1004B6A14();

  v99 = sub_1004B6B24();
  *(v0 + 776) = v99;
  *(v0 + 784) = v100;
  if (v98)
  {
    v101 = *(v0 + 544);
    v102 = *(v0 + 536);
    v103 = *(v0 + 528);

    (*(v102 + 8))(v101, v103);
LABEL_29:
    v104 = swift_task_alloc();
    *(v0 + 816) = v104;
    *v104 = v0;
    v104[1] = sub_1002D4A58;
    v105 = *(v0 + 512);

    return sub_1002D65EC(v105);
  }

  v117 = v99;
  v118 = v100;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v119 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v120 = BagProvider.bag.getter();

  (*(*v119 + 120))(v120);

  v121 = swift_task_alloc();
  *(v0 + 792) = v121;
  v121[2] = v117;
  v121[3] = v118;
  v121[4] = v96;
  v121[5] = v97;
  v122 = swift_task_alloc();
  *(v0 + 800) = v122;
  *v122 = v0;
  v122[1] = sub_1002D4788;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x8000000100507E40, sub_1002DB9EC, v121, &type metadata for LyricsLoader.Result);
}

uint64_t sub_1002D44C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_1002D4E2C;
  }

  else
  {
    v2 = sub_1002D45D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D45D0()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  sub_100004D7C(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_1002D4788()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_1002D53E8;
  }

  else
  {
    v2 = sub_1002D48D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D48D8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_100004D90(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_1002D4A58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_1002D5554;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_1002D4B80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D4B80()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_1002D4CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D4E2C()
{
  v66 = v0;
  v1 = v0[82];
  v58 = v0[81];
  v60 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v62 = v0[80];
  v64 = v0[65];
  v7 = v0[64];
  swift_willThrow();
  v8 = Logger.lyrics.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v9(v58, v60, v3);
  v9(v62, v7, v3);
  v10 = v64;
  swift_errorRetain();
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[95];
    v14 = v0[82];
    v56 = v0[81];
    v57 = v0[80];
    v15 = v0[79];
    v16 = v0[78];
    v59 = v0[70];
    v61 = v0[69];
    v63 = v0[71];
    v17 = v0[65];
    v18 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v18 = 136447234;
    v0[62] = v17;
    v19 = sub_1004BBF04();
    v21 = sub_1002C4260(v19, v20, v65);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v0[63] = v13;
    swift_errorRetain();
    sub_100003ABC(&qword_10060F8C0);
    v22 = sub_1004BBF04();
    v24 = sub_1002C4260(v22, v23, v65);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = sub_1004BB284();
    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = *(v15 + 8);
    v28(v14, v16);
    v29 = sub_1002C4260(v26, v27, v65);

    *(v18 + 24) = v29;
    *(v18 + 32) = 2082;
    v0[55] = sub_1004BB264();
    v0[56] = v30;
    sub_100003ABC(&qword_100610D60);
    v31 = sub_1004BBF04();
    v33 = v32;
    v28(v56, v16);
    v34 = sub_1002C4260(v31, v33, v65);

    *(v18 + 34) = v34;
    *(v18 + 42) = 2082;
    v35 = sub_1002D2C8C();
    v37 = v36;
    v28(v57, v16);
    v38 = sub_1002C4260(v35, v37, v65);

    *(v18 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v11, v12, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v18, 0x34u);
    swift_arrayDestroy();

    (*(v59 + 8))(v63, v61);
  }

  else
  {
    v39 = v0[82];
    v40 = v0[81];
    v41 = v0[80];
    v42 = v0[79];
    v43 = v0[78];
    v44 = v0[71];
    v45 = v11;
    v46 = v0[70];
    v47 = v0[69];

    v28 = *(v42 + 8);
    v28(v41, v43);
    v28(v40, v43);
    v28(v39, v43);
    (*(v46 + 8))(v44, v47);
  }

  v48 = v0[94];
  v49 = v0[93];
  v50 = v0[92];
  v51 = v0[88];
  v52 = v0[78];
  sub_1002DB940();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();

  sub_100004D7C(v50, v49);
  v28(v51, v52);

  v54 = v0[1];

  return v54();
}

uint64_t sub_1002D53E8()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_100004D90(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D5554()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002D56AC()
{

  v0 = sub_1004BC034();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1004BC034();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1004BD9C4();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1004BC034();
      v3 = v5;
    }

    while (v5);
  }

  sub_1004BC034();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_1002D5808(uint64_t a1, void *a2, void *a3)
{
  result = sub_100009178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003ABC(&qword_10060F8C0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002D58E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003ABC(&qword_10060AD10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = sub_1004B6B64().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_1002DCF28;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E26FC;
  aBlock[3] = &unk_1005C06A0;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_1002D5B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    sub_100003ABC(&qword_10060AD10);
    sub_1004BC404();
  }

  else
  {
    if (!a2)
    {
      sub_1002DB940();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    sub_100003ABC(&qword_10060AD10);
    sub_1004BC3F4();
  }
}

uint64_t sub_1002D5D28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1004B7F74();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 32), &qword_10060ACB8);
    sub_1002DB940();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_1002D5EB8;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_1002D5EB8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_1002D6090;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_1002D5FF4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002D5FF4()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}