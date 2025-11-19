void ArtworkImage.Placeholder.hash(into:)()
{
  v1 = sub_1004BB914();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100314E7C(v0, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = sub_100003ABC(&unk_10060DD30);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 9;
      }

      else if (v15 == 10)
      {
        v16 = 10;
      }

      else
      {
        v16 = 11;
      }
    }

    else if (v15 == 6)
    {
      v16 = 6;
    }

    else if (v15 == 7)
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    goto LABEL_23;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 2;
    }

    else if (v15 == 4)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    goto LABEL_23;
  }

  if (v15)
  {
    v16 = v15 != 1;
LABEL_23:
    sub_1004BDBB4(v16);
    return;
  }

  sub_100025B04(v13, v10, &qword_10060A7B8);
  sub_1004BDBB4(4uLL);
  sub_10000F778(v10, v7, &qword_10060A7B8);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1004BDBC4(1u);
    sub_100315328(&qword_10060C4F8, &type metadata accessor for Playlist.Variant);
    sub_1004BBCE4();
    (*(v2 + 8))(v4, v1);
  }

  sub_100007214(v10, &qword_10060A7B8);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  sub_1004BDBA4();
  ArtworkImage.Placeholder.hash(into:)();
  return sub_1004BDBF4();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_100003ABC(&qword_10060C500);
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin(v3);
  v100 = &v68 - v4;
  v5 = sub_100003ABC(&qword_10060C508);
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v101 = &v68 - v6;
  v88 = sub_100003ABC(&qword_10060C510);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v68 - v7;
  v86 = sub_100003ABC(&qword_10060C518);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v99 = &v68 - v8;
  v84 = sub_100003ABC(&qword_10060C520);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v98 = &v68 - v9;
  v82 = sub_100003ABC(&qword_10060C528);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v97 = &v68 - v10;
  v78 = sub_100003ABC(&qword_10060C530);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v95 = &v68 - v11;
  v81 = sub_100003ABC(&qword_10060C538);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v96 = &v68 - v12;
  v75 = sub_100003ABC(&qword_10060C540);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v103 = &v68 - v13;
  v74 = sub_100003ABC(&qword_10060C548);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v94 = &v68 - v14;
  v72 = sub_100003ABC(&qword_10060C550);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v93 = &v68 - v15;
  v70 = sub_100003ABC(&qword_10060C558);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v68 - v16;
  v18 = sub_100003ABC(&qword_10060C560);
  v105 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v27 = a1[3];
  v107 = a1;
  sub_100009178(a1, v27);
  sub_100314EE4();
  v28 = v106;
  sub_1004BDC34();
  if (!v28)
  {
    v68 = v23;
    v30 = v103;
    v29 = v104;
    v106 = v26;
    v31 = sub_1004BD814();
    if (*(v31 + 16) == 1)
    {
      v32 = *(v31 + 32);
      if (v32 != 12)
      {
        if (*(v31 + 32) > 5u)
        {
          v41 = v105;
          if (*(v31 + 32) > 8u)
          {
            v33 = v102;
            if (v32 == 9)
            {
              v117 = 9;
              sub_100314FE0();
              sub_1004BD784();
              (*(v87 + 8))(v29, v88);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v54 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v54 - 8) + 56))(v106, 9, 11, v54);
            }

            else if (v32 == 10)
            {
              v118 = 10;
              sub_100314F8C();
              v48 = v101;
              sub_1004BD784();
              (*(v89 + 8))(v48, v90);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v49 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v49 - 8) + 56))(v106, 10, 11, v49);
            }

            else
            {
              v60 = v102;
              v119 = 11;
              sub_100314F38();
              v61 = v100;
              sub_1004BD784();
              (*(v91 + 8))(v61, v92);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v66 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v66 - 8) + 56))(v106, 11, 11, v66);
              v33 = v60;
            }
          }

          else
          {
            v33 = v102;
            if (v32 == 6)
            {
              v114 = 6;
              sub_1003150DC();
              v50 = v97;
              sub_1004BD784();
              (*(v80 + 8))(v50, v82);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v51 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v51 - 8) + 56))(v106, 6, 11, v51);
            }

            else if (v32 == 7)
            {
              v115 = 7;
              sub_100315088();
              v42 = v98;
              sub_1004BD784();
              (*(v83 + 8))(v42, v84);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v43 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v43 - 8) + 56))(v106, 7, 11, v43);
            }

            else
            {
              v116 = 8;
              sub_100315034();
              v57 = v99;
              sub_1004BD784();
              (*(v85 + 8))(v57, v86);
              (*(v41 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v58 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v58 - 8) + 56))(v106, 8, 11, v58);
            }
          }

          goto LABEL_29;
        }

        if (*(v31 + 32) <= 2u)
        {
          v33 = v102;
          if (*(v31 + 32))
          {
            if (v32 == 1)
            {
              v109 = 1;
              sub_100315280();
              v34 = v93;
              sub_1004BD784();
              v35 = v105;
              (*(v71 + 8))(v34, v72);
              (*(v35 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v36 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v36 - 8) + 56))(v106, 2, 11, v36);
            }

            else
            {
              v110 = 2;
              sub_10031522C();
              v55 = v94;
              sub_1004BD784();
              v56 = v105;
              (*(v73 + 8))(v55, v74);
              (*(v56 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v64 = sub_100003ABC(&unk_10060DD30);
              v37 = v106;
              (*(*(v64 - 8) + 56))(v106, 3, 11, v64);
            }
          }

          else
          {
            v108 = 0;
            sub_1003152D4();
            sub_1004BD784();
            (*(v69 + 8))(v17, v70);
            (*(v105 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v63 = sub_100003ABC(&unk_10060DD30);
            v37 = v106;
            (*(*(v63 - 8) + 56))(v106, 1, 11, v63);
          }

          goto LABEL_29;
        }

        if (v32 == 3)
        {
          v111 = 3;
          sub_1003151D8();
          sub_1004BD784();
          v52 = v105;
          (*(v76 + 8))(v30, v75);
          (*(v52 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v53 = sub_100003ABC(&unk_10060DD30);
          v37 = v106;
          (*(*(v53 - 8) + 56))(v106, 4, 11, v53);
        }

        else
        {
          v44 = v105;
          if (v32 == 4)
          {
            v112 = 4;
            sub_100315184();
            v45 = v96;
            sub_1004BD784();
            sub_1004BB914();
            sub_100315328(&qword_10060C570, &type metadata accessor for Playlist.Variant);
            v46 = v68;
            v47 = v81;
            sub_1004BD7B4();
            (*(v79 + 8))(v45, v47);
            (*(v44 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v67 = sub_100003ABC(&unk_10060DD30);
            (*(*(v67 - 8) + 56))(v46, 0, 11, v67);
            v37 = v106;
            sub_100315370(v46, v106, type metadata accessor for ArtworkImage.Placeholder);
            v33 = v102;
LABEL_29:
            sub_100315370(v37, v33, type metadata accessor for ArtworkImage.Placeholder);
            return sub_100004C6C(v107);
          }

          v113 = 5;
          sub_100315130();
          v59 = v95;
          sub_1004BD784();
          (*(v77 + 8))(v59, v78);
          (*(v44 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v65 = sub_100003ABC(&unk_10060DD30);
          v37 = v106;
          (*(*(v65 - 8) + 56))(v106, 5, 11, v65);
        }

        v33 = v102;
        goto LABEL_29;
      }
    }

    v38 = sub_1004BD4B4();
    swift_allocError();
    v40 = v39;
    sub_100003ABC(&qword_10060C568);
    *v40 = v21;
    sub_1004BD794();
    sub_1004BD4A4();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v105 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return sub_100004C6C(v107);
}

uint64_t sub_100310BFC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100310C64()
{
  sub_1004BDBA4();
  ArtworkImage.Placeholder.hash(into:)();
  return sub_1004BDBF4();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004BBA84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B7644();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = *(v8 + 16);
  v14(&v45 - v12, v1, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v49 = a1;
  if (v15 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v13, v7);
    v16 = sub_100003ABC(&unk_10060DD30);
    v17 = *(*(v16 - 8) + 56);
    v18 = v49;
    v19 = 7;
    return v17(v18, v19, 11, v16);
  }

  if (v15 == enum case for GenericMusicItem.composer(_:))
  {
    v21 = sub_100003ABC(&unk_10060DD30);
    (*(*(v21 - 8) + 56))(v49, 11, 11, v21);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.creditArtist(_:) || v15 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v13, v7);
    v16 = sub_100003ABC(&unk_10060DD30);
    v17 = *(*(v16 - 8) + 56);
    v18 = v49;
    goto LABEL_3;
  }

  if (v15 == enum case for GenericMusicItem.genre(_:))
  {
    v23 = sub_100003ABC(&unk_10060DD30);
    (*(*(v23 - 8) + 56))(v49, 10, 11, v23);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v15 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v25 = sub_100003ABC(&unk_10060DD30);
    (*(*(v25 - 8) + 56))(v49, 5, 11, v25);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v4 + 32))(v6, v13, v3);
    v26 = v49;
    sub_1004BB934();
    (*(v4 + 8))(v6, v3);
    v27 = sub_100003ABC(&unk_10060DD30);
    return (*(*(v27 - 8) + 56))(v26, 0, 11, v27);
  }

  if (v15 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v28 = enum case for Playlist.Variant.folder(_:);
    v29 = sub_1004BB914();
    v30 = *(v29 - 8);
    v31 = v49;
    (*(v30 + 104))(v49, v28, v29);
    (*(v30 + 56))(v31, 0, 1, v29);
    v32 = sub_100003ABC(&unk_10060DD30);
    (*(*(v32 - 8) + 56))(v31, 0, 11, v32);
    return (*(v8 + 8))(v13, v7);
  }

  if (v15 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v15 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v34 = sub_100003ABC(&unk_10060DD30);
    (*(*(v34 - 8) + 56))(v49, 8, 11, v34);
    return (*(v8 + 8))(v13, v7);
  }

  a1 = v49;
  if (v15 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v15 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v13, v7);
    v33 = sub_100003ABC(&unk_10060DD30);
    return (*(*(v33 - 8) + 56))(v49, 9, 11, v33);
  }

  if (v15 == enum case for GenericMusicItem.tvEpisode(_:) || v15 == enum case for GenericMusicItem.tvSeason(_:) || v15 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v13, v7);
    v24 = sub_100003ABC(&unk_10060DD30);
    return (*(*(v24 - 8) + 56))(v49, 6, 11, v24);
  }

  a1 = v49;
  if (v15 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v13, v7);
    v16 = sub_100003ABC(&unk_10060DD30);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1;
LABEL_3:
    v19 = 1;
    return v17(v18, v19, 11, v16);
  }

  if (v15 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v15 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_100609C18 != -1)
  {
    swift_once();
  }

  v35 = sub_1004B80B4();
  sub_100007084(v35, static Logger.artwork);
  (v14)(v48, v1, v7);
  v36 = sub_1004B8094();
  v47 = sub_1004BC994();
  if (os_log_type_enabled(v36, v47))
  {
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v37 = 136315394;
    *(v37 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v50);
    *(v37 + 12) = 2080;
    sub_100315328(&qword_10060AA20, &type metadata accessor for GenericMusicItem);
    v38 = v48;
    v39 = sub_1004BD934();
    v41 = v40;
    v42 = *(v8 + 8);
    v42(v38, v7);
    v43 = sub_1002C4260(v39, v41, &v50);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v36, v47, "Unhandled case for %s: %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v42 = *(v8 + 8);
    v42(v48, v7);
  }

  v44 = sub_100003ABC(&unk_10060DD30);
  (*(*(v44 - 8) + 56))(v49, 1, 11, v44);
  return (v42)(v13, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  v1 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v1 - 8);
  v3 = &v35[-v2];
  v4 = sub_1004B7BB4();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004B7644();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v11);
  v14 = &v35[-v13];
  v15 = *(v8 + 16);
  v15(&v35[-v13], v0, v7, v12);
  v16 = (*(v8 + 88))(v14, v7);
  v22 = v16 == enum case for GenericMusicItem.album(_:) || v16 == enum case for GenericMusicItem.artist(_:) || v16 == enum case for GenericMusicItem.composer(_:) || v16 == enum case for GenericMusicItem.creditArtist(_:) || v16 == enum case for GenericMusicItem.curator(_:) || v16 == enum case for GenericMusicItem.editorialItem(_:) || v16 == enum case for GenericMusicItem.genre(_:);
  if (v22 || v16 == enum case for GenericMusicItem.musicMovie(_:) || v16 == enum case for GenericMusicItem.musicVideo(_:) || v16 == enum case for GenericMusicItem.playlist(_:) || v16 == enum case for GenericMusicItem.playlistFolder(_:) || v16 == enum case for GenericMusicItem.radioShow(_:) || v16 == enum case for GenericMusicItem.recordLabel(_:) || v16 == enum case for GenericMusicItem.socialProfile(_:) || v16 == enum case for GenericMusicItem.song(_:) || v16 == enum case for GenericMusicItem.station(_:) || v16 == enum case for GenericMusicItem.tvEpisode(_:) || v16 == enum case for GenericMusicItem.tvSeason(_:) || v16 == enum case for GenericMusicItem.tvShow(_:) || v16 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v8 + 8))(v14, v7);
  }

  if (v16 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 96))(v14, v7);
    v24 = v37;
    (*(v37 + 32))(v6, v14, v4);
    sub_1002BEA2C(v3);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v25 - 8) + 48))(v3, 1, v25) == 1)
    {
      (*(v24 + 8))(v6, v4);
      return sub_100007214(v3, &qword_10060EF20);
    }

    else if (sub_1004BB654() < 1 || sub_1004BB664() < 1)
    {
      (*(v24 + 8))(v6, v4);
      return sub_100314E1C(v3, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      sub_1004BB654();
      sub_1004BB664();
      (*(v24 + 8))(v6, v4);
      return sub_100314E1C(v3, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v16 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v8 + 8))(v14, v7);
  }

  if (qword_100609C18 != -1)
  {
    swift_once();
  }

  v26 = sub_1004B80B4();
  sub_100007084(v26, static Logger.artwork);
  (v15)(v10, v0, v7);
  v27 = sub_1004B8094();
  v28 = sub_1004BC994();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v29 = 136315394;
    *(v29 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v38);
    *(v29 + 12) = 2080;
    sub_100315328(&qword_10060AA20, &type metadata accessor for GenericMusicItem);
    v36 = v28;
    v30 = sub_1004BD934();
    v32 = v31;
    v33 = *(v8 + 8);
    v33(v10, v7);
    v34 = sub_1002C4260(v30, v32, &v38);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v36, "Unhandled case for %s: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = *(v8 + 8);
    v33(v10, v7);
  }

  return (v33)(v14, v7);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = sub_1004BB914();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = sub_1004BBE24();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB6C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    sub_1004BB584();
    v14 = [v13 token];
    sub_1004BD284();
    swift_unknownObjectRelease();
    sub_100009130(0, &qword_10060C578);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = sub_1004BB634();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_100315370(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB634();
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = sub_1004BBE64();
  v11 = v10;
  if (v9 == sub_1004BBE64() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = sub_1004BD9C4();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    sub_1004BB5B4();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = sub_1004BBE64();
  v18 = v17;
  if (v16 == sub_1004BBE64() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_1004BD9C4();

  if (v21)
  {
LABEL_19:
    sub_1004BB5D4();
    goto LABEL_17;
  }

  v22 = sub_1004BBE64();
  v24 = v23;
  if (v22 == sub_1004BBE64() && v24 == v25)
  {

LABEL_21:
    sub_1004BB5E4();
    goto LABEL_17;
  }

  v28 = sub_1004BD9C4();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_1004BBE64();
  v31 = v30;
  if (v29 == sub_1004BBE64() && v31 == v32)
  {

LABEL_26:
    sub_1004BB614();
    goto LABEL_17;
  }

  v33 = sub_1004BD9C4();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = sub_1004BBE64();
  v36 = v35;
  if (v34 == sub_1004BBE64() && v36 == v37)
  {

LABEL_31:
    sub_1004BB604();
    goto LABEL_17;
  }

  v38 = sub_1004BD9C4();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = sub_1004BBE64();
  v41 = v40;
  if (v39 == sub_1004BBE64() && v41 == v42)
  {

LABEL_36:
    sub_1004BB624();
    goto LABEL_17;
  }

  v43 = sub_1004BD9C4();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = sub_1004BBE64();
  v46 = v45;
  if (v44 == sub_1004BBE64() && v46 == v47)
  {

LABEL_41:
    sub_1004BB5C4();
    goto LABEL_17;
  }

  v48 = sub_1004BD9C4();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = sub_1004BBE64();
  v51 = v50;
  if (v49 == sub_1004BBE64() && v51 == v52)
  {

LABEL_46:
    sub_1004BB5F4();
    goto LABEL_17;
  }

  v53 = sub_1004BD9C4();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_1004BBE64();
  v56 = v55;
  if (v54 == sub_1004BBE64() && v56 == v57)
  {

LABEL_51:
    sub_1004BB5A4();
    goto LABEL_17;
  }

  v58 = sub_1004BD9C4();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_100312950()
{
  v0 = sub_1004BB634();
  sub_100007108(v0, static Artwork.CropStyle.fallback);
  sub_100007084(v0, static Artwork.CropStyle.fallback);
  return sub_1004BB5B4();
}

uint64_t sub_1003129D4()
{
  v0 = sub_1004BB594();
  sub_100007108(v0, static Artwork.ImageFormat.fallback);
  v1 = sub_100007084(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100009130(0, &qword_10060A758);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    sub_1004BB584();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1004BB6C4();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_100312B88()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.artwork);
  sub_100007084(v0, static Logger.artwork);
  return static Logger.music(_:)();
}

uint64_t sub_100312C44@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100007084(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100312CE8()
{
  v0 = sub_100003ABC(&qword_10060C400);
  sub_100007108(v0, qword_10060C3E0);
  v1 = sub_100007084(v0, qword_10060C3E0);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_100312D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609C20 != -1)
  {
    swift_once();
  }

  v2 = sub_100003ABC(&qword_10060C400);
  v3 = sub_100007084(v2, qword_10060C3E0);
  return sub_10000F778(v3, a1, &qword_10060C400);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(sub_100003ABC(&qword_10060C400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_100314DA8();
  sub_1004B9194();
  return sub_100312F30;
}

void sub_100312F30(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_10000F778((*a1)[3], (*a1)[2], &qword_10060C400);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_10000F778(v3[2], v3[1], &qword_10060C400);
    sub_1004B91A4();
    sub_100007214(v6, &qword_10060C400);
  }

  else
  {
    sub_1004B91A4();
  }

  sub_100007214(v4, &qword_10060C400);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_100313040(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1004BA7E4();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_10060C400);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a2, v11, &qword_10060C400);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100007214(v11, &qword_10060C400);
  }

  sub_100315370(v11, v15, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_10000F778(v15, &v23, &qword_10060E040);
  if (v24)
  {
    sub_100013414(&v23, v25);
    v17 = v22;
    sub_100007214(v22, &qword_10060E040);
    sub_100013414(v25, v17);
  }

  else
  {
    sub_100007214(&v23, &qword_10060E040);
    v17 = v22;
  }

  v18 = v21;
  sub_10000F778((v15 + 40), &v23, &qword_10060E040);
  if (v24)
  {
    sub_100013414(&v23, v25);
    sub_100007214(v17 + 40, &qword_10060E040);
    sub_100013414(v25, v17 + 40);
  }

  else
  {
    sub_100007214(&v23, &qword_10060E040);
  }

  sub_10000F778(&v15[*(v12 + 24)], v5, &qword_10060C418);
  sub_100314E1C(v15, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v18 + 48))(v5, 1, v6) == 1)
  {
    return sub_100007214(v5, &qword_10060C418);
  }

  v19 = *(v18 + 32);
  v19(v8, v5, v6);
  v20 = *(v12 + 24);
  sub_100007214(v17 + v20, &qword_10060C418);
  v19((v17 + v20), v8, v6);
  return (*(v18 + 56))(v17 + v20, 0, 1, v6);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_100003ABC(&qword_10060C580) + 36));
  v6 = *(sub_100003ABC(&qword_10060C588) + 28);
  sub_100313588(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = sub_100003ABC(&qword_10060C590);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_100313588@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_10060C418);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_100003ABC(&qword_10060C400);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_100308C90(v9);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v12 = sub_1004BA7E4();
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v13 = *(*(v12 - 8) + 56);
    v13(v6, 1, 1, v12);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v18 = v2;
    v14 = *(v10 + 24);
    v13(&a1[v14], 1, 1, v12);
    sub_100047A5C(v21, a1, &qword_10060E040);
    sub_100047A5C(v19, (a1 + 40), &qword_10060E040);
    v15 = &a1[v14];
    v2 = v18;
    sub_100047A5C(v6, v15, &qword_10060C418);
    if (v11(v9, 1, v10) != 1)
    {
      sub_100007214(v9, &qword_10060C400);
    }
  }

  else
  {
    sub_100315370(v9, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v4 = sub_100003ABC(&qword_10060C400);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F778(a1, v7, &qword_10060C400);
  v11 = *(v8 + 20);
  *(v10 + v11) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_100025B04(v7, v13 + v12, &qword_10060C400);
  *v10 = sub_1003153FC;
  v10[1] = v13;
  sub_1004BA124();
  return sub_100314E1C(v10, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128))
{
  v2 = sub_100003ABC(&qword_10060C400);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PlaceholderStyleModifier(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v7);
  v10 = *(v6 + 20);
  *(v9 + v10) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_100025B04(v5, v12 + v11, &qword_10060C400);
  *v9 = sub_100318370;
  v9[1] = v12;
  sub_1004BA124();
  return sub_100314E1C(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v7 + 20);
  *(v6 + v8) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;
  v6[1] = a2;

  sub_1004BA124();
  return sub_100314E1C(v6, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (sub_1004B87D4() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v8 - 8);
  v10 = &v39[-1] - v9;
  v11 = sub_100003ABC(&unk_10060DF20);
  __chkstk_darwin(v11 - 8);
  v13 = &v39[-1] - v12;
  v15 = *(v14 + 56);
  sub_10000F778(a1, &v39[-1] - v12, &qword_10060EF20);
  sub_10000F778(a2, &v13[v15], &qword_10060EF20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000F778(v13, v10, &qword_10060EF20);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100315370(&v13[v15], v7, type metadata accessor for ArtworkImage.ViewModel);
      v17 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v10, v7);
      sub_100314E1C(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_100314E1C(v10, type metadata accessor for ArtworkImage.ViewModel);
      sub_100007214(v13, &qword_10060EF20);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100314E1C(v10, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_100007214(v13, &unk_10060DF20);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100007214(v13, &qword_10060EF20);
LABEL_8:
  v18 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v18[5], a2 + v18[5]))
  {
    v19 = v18[6];
    v20 = (a1 + v19);
    v21 = *(a1 + v19 + 8);
    v22 = (a2 + v19);
    v23 = *(a2 + v19 + 8);
    if (v21)
    {
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      if (*v20 != *v22)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    v24 = (a1 + v18[7]);
    v25 = *(v24 + 26);
    v26 = v24[1];
    v38 = *v24;
    v39[0] = v26;
    *(v39 + 10) = v25;
    v27 = (a2 + v18[7]);
    *&v41[10] = *(v27 + 26);
    v28 = v27[1];
    v40 = *v27;
    *v41 = v28;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v38, &v40))
    {
      v29 = v18[8];
      v30 = a1 + v29;
      v31 = *(a1 + v29);
      v32 = *(a1 + v29 + 16);
      v33 = a2 + v29;
      v34 = *(a2 + v29);
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (v32)
      {
        if (v32 == 1)
        {
          if (v36 != 1 || v31 != v34)
          {
            return 0;
          }
        }

        else if (v36 != 2 || v35 | *&v34)
        {
          return 0;
        }
      }

      else if (v36 || v31 != v34 || *(v30 + 8) != v35)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB914();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060A7B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100003ABC(&qword_10060CB40);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003ABC(&qword_10060CB48);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - v17;
  v20 = *(v19 + 56);
  sub_100314E7C(a1, &v31 - v17, type metadata accessor for ArtworkImage.Placeholder);
  sub_100314E7C(a2, &v18[v20], type metadata accessor for ArtworkImage.Placeholder);
  v21 = sub_100003ABC(&unk_10060DD30);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v18, 11, v21);
  if (v23 <= 5)
  {
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v22(&v18[v20], 11, v21) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v23 == 4)
      {
        if (v22(&v18[v20], 11, v21) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v22(&v18[v20], 11, v21) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        if (v22(&v18[v20], 11, v21) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v22(&v18[v20], 11, v21) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100314E1C(v18, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_100314E7C(v18, v15, type metadata accessor for ArtworkImage.Placeholder);
    if (v22(&v18[v20], 11, v21))
    {
      sub_100007214(v15, &qword_10060A7B8);
      goto LABEL_36;
    }

    v25 = *(v10 + 48);
    sub_100025B04(v15, v12, &qword_10060A7B8);
    sub_100025B04(&v18[v20], &v12[v25], &qword_10060A7B8);
    v27 = v31;
    v26 = v32;
    v28 = *(v31 + 48);
    if (v28(v12, 1, v32) == 1)
    {
      if (v28(&v12[v25], 1, v26) == 1)
      {
        sub_100007214(v12, &qword_10060A7B8);
        goto LABEL_35;
      }
    }

    else
    {
      sub_10000F778(v12, v9, &qword_10060A7B8);
      if (v28(&v12[v25], 1, v26) != 1)
      {
        (*(v27 + 32))(v6, &v12[v25], v26);
        sub_100315328(&qword_10060CB50, &type metadata accessor for Playlist.Variant);
        v29 = sub_1004BBD84();
        v30 = *(v27 + 8);
        v30(v6, v26);
        v30(v9, v26);
        sub_100007214(v12, &qword_10060A7B8);
        if (v29)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_100314E1C(v18, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v27 + 8))(v9, v26);
    }

    sub_100007214(v12, &qword_10060CB40);
    goto LABEL_44;
  }

  if (v23 <= 8)
  {
    if (v23 == 6)
    {
      if (v22(&v18[v20], 11, v21) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v23 == 7)
    {
      if (v22(&v18[v20], 11, v21) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v22(&v18[v20], 11, v21) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 == 9)
  {
    if (v22(&v18[v20], 11, v21) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 == 10)
  {
    if (v22(&v18[v20], 11, v21) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v22(&v18[v20], 11, v21) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_100007214(v18, &qword_10060CB48);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB634();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100003ABC(&qword_10060CB58);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((sub_1004BB6B4() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v15 = *(v11 + 48);
  sub_10000F778(a1 + v14, v13, &qword_10060DD10);
  sub_10000F778(a2 + v14, &v13[v15], &qword_10060DD10);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100007214(v13, &qword_10060DD10);
      return 1;
    }

    goto LABEL_7;
  }

  sub_10000F778(v13, v10, &qword_10060DD10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_100007214(v13, &qword_10060CB58);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_100315328(&qword_10060CB60, &type metadata accessor for Artwork.CropStyle);
  v19 = sub_1004BBD84();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_100007214(v13, &qword_10060DD10);
  return (v19 & 1) != 0;
}

uint64_t sub_100314CDC()
{

  return swift_deallocObject();
}

uint64_t sub_100314D14@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_100314DA8()
{
  result = qword_10060C3F8;
  if (!qword_10060C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C3F8);
  }

  return result;
}

uint64_t sub_100314E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100314E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100314EE4()
{
  result = qword_10060C488;
  if (!qword_10060C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C488);
  }

  return result;
}

unint64_t sub_100314F38()
{
  result = qword_10060C490;
  if (!qword_10060C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C490);
  }

  return result;
}

unint64_t sub_100314F8C()
{
  result = qword_10060C498;
  if (!qword_10060C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C498);
  }

  return result;
}

unint64_t sub_100314FE0()
{
  result = qword_10060C4A0;
  if (!qword_10060C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4A0);
  }

  return result;
}

unint64_t sub_100315034()
{
  result = qword_10060C4A8;
  if (!qword_10060C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4A8);
  }

  return result;
}

unint64_t sub_100315088()
{
  result = qword_10060C4B0;
  if (!qword_10060C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4B0);
  }

  return result;
}

unint64_t sub_1003150DC()
{
  result = qword_10060C4B8;
  if (!qword_10060C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4B8);
  }

  return result;
}

unint64_t sub_100315130()
{
  result = qword_10060C4C0;
  if (!qword_10060C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4C0);
  }

  return result;
}

unint64_t sub_100315184()
{
  result = qword_10060C4C8;
  if (!qword_10060C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4C8);
  }

  return result;
}

unint64_t sub_1003151D8()
{
  result = qword_10060C4D8;
  if (!qword_10060C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4D8);
  }

  return result;
}

unint64_t sub_10031522C()
{
  result = qword_10060C4E0;
  if (!qword_10060C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4E0);
  }

  return result;
}

unint64_t sub_100315280()
{
  result = qword_10060C4E8;
  if (!qword_10060C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4E8);
  }

  return result;
}

unint64_t sub_1003152D4()
{
  result = qword_10060C4F0;
  if (!qword_10060C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4F0);
  }

  return result;
}

uint64_t sub_100315328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100315370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100315400()
{
  v1 = *(sub_100003ABC(&qword_10060C400) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      sub_100004C6C(v0 + v2);
    }

    if (*(v3 + 64))
    {
      sub_100004C6C(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004BA7E4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1003155A4(uint64_t a1)
{
  v3 = *(sub_100003ABC(&qword_10060C400) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100313040(a1, v4);
}

uint64_t sub_1003156B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BB6C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003ABC(&qword_10060DD10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1003157C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004BB6C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003ABC(&qword_10060DD10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1003158CC()
{
  sub_1004BB6C4();
  if (v0 <= 0x3F)
  {
    sub_100315CC8(319, &unk_10060C608, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100315994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_10060EF20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100315ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003ABC(&qword_10060EF20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100315BE4()
{
  sub_100315CC8(319, &qword_10060C6A0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      sub_100315D2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100315CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100315D2C()
{
  if (!qword_10060C6A8)
  {
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060C6A8);
    }
  }
}

uint64_t sub_100315D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100315DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100315E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_10060DD30);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100315ED0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100003ABC(&unk_10060DD30);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100315F60()
{
  sub_100315FB8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100315FB8()
{
  if (!qword_10060C768)
  {
    sub_100315CC8(0, &unk_10060C770, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_10060C768);
    }
  }
}

uint64_t sub_100316044(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_10060C798);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_10060C7A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100316194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060C798);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_10060C7A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1003162D0()
{
  _s3__C6CGSizeVMa_0(319);
  if (v0 <= 0x3F)
  {
    sub_100316668(319, &qword_10060C810, &qword_10060C400, &unk_1004DEE90, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100315CC8(319, &unk_10060C818, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1003163FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100003ABC(&qword_10060C418);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1003164D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C418);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100316588()
{
  sub_100316668(319, &qword_10060C8C0, &qword_10060C8C8, &unk_1004DF210, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100315CC8(319, &unk_10060C8D0, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100316668(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003B68(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1003166E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060C798);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1003167B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C798);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100316860()
{
  sub_100316910();
  if (v0 <= 0x3F)
  {
    sub_100316668(319, &qword_10060C810, &qword_10060C400, &unk_1004DEE90, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100316910()
{
  result = qword_10060DBE0;
  if (!qword_10060DBE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10060DBE0);
  }

  return result;
}

uint64_t sub_100316960()
{
  sub_100003B68(&qword_10060C998);
  sub_1003169C4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1003169C4()
{
  result = qword_10060DD40;
  if (!qword_10060DD40)
  {
    sub_100003B68(&qword_10060C998);
    sub_100316A7C();
    sub_1000206D4(&unk_10060DD80, &qword_10060C9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DD40);
  }

  return result;
}

unint64_t sub_100316A7C()
{
  result = qword_10060C9A0;
  if (!qword_10060C9A0)
  {
    sub_100003B68(&unk_10060DD50);
    sub_100316B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9A0);
  }

  return result;
}

unint64_t sub_100316B08()
{
  result = qword_10060C9A8;
  if (!qword_10060C9A8)
  {
    sub_100003B68(&unk_10060DD60);
    sub_100315328(&qword_10060C9B0, type metadata accessor for ArtworkImage.Placeholder.View);
    sub_1000206D4(&unk_10060DD70, &qword_10060C9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9A8);
  }

  return result;
}

unint64_t sub_100316C80()
{
  result = qword_10060EF50;
  if (!qword_10060EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF50);
  }

  return result;
}

unint64_t sub_100316CDC()
{
  result = qword_10060C9C8;
  if (!qword_10060C9C8)
  {
    sub_100003B68(&qword_10060C408);
    sub_100316D94();
    sub_1000206D4(&qword_10060C9F0, &qword_10060C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9C8);
  }

  return result;
}

unint64_t sub_100316D94()
{
  result = qword_10060C9D0;
  if (!qword_10060C9D0)
  {
    sub_100003B68(&qword_10060C9D8);
    sub_1000206D4(&qword_10060C9E0, &qword_10060C9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9D0);
  }

  return result;
}

unint64_t sub_100316E50()
{
  result = qword_10060C9F8;
  if (!qword_10060C9F8)
  {
    sub_100003B68(&qword_10060C580);
    sub_1000206D4(&qword_10060CA00, &qword_10060C590);
    sub_1000206D4(&qword_10060CA08, &qword_10060C588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9F8);
  }

  return result;
}

uint64_t sub_100316F34()
{
  type metadata accessor for PlaceholderStyleModifier(255);
  sub_1004B8D64();
  sub_100315328(&unk_10060E000, type metadata accessor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003171F4()
{
  result = qword_10060CA10;
  if (!qword_10060CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA10);
  }

  return result;
}

unint64_t sub_10031724C()
{
  result = qword_10060CA18;
  if (!qword_10060CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA18);
  }

  return result;
}

unint64_t sub_1003172A4()
{
  result = qword_10060CA20;
  if (!qword_10060CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA20);
  }

  return result;
}

unint64_t sub_1003172FC()
{
  result = qword_10060CA28;
  if (!qword_10060CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA28);
  }

  return result;
}

unint64_t sub_100317354()
{
  result = qword_10060CA30;
  if (!qword_10060CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA30);
  }

  return result;
}

unint64_t sub_1003173AC()
{
  result = qword_10060CA38;
  if (!qword_10060CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA38);
  }

  return result;
}

unint64_t sub_100317404()
{
  result = qword_10060CA40;
  if (!qword_10060CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA40);
  }

  return result;
}

unint64_t sub_10031745C()
{
  result = qword_10060CA48;
  if (!qword_10060CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA48);
  }

  return result;
}

unint64_t sub_1003174B4()
{
  result = qword_10060CA50;
  if (!qword_10060CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA50);
  }

  return result;
}

unint64_t sub_10031750C()
{
  result = qword_10060CA58;
  if (!qword_10060CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA58);
  }

  return result;
}

unint64_t sub_100317564()
{
  result = qword_10060CA60;
  if (!qword_10060CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA60);
  }

  return result;
}

unint64_t sub_1003175BC()
{
  result = qword_10060CA68;
  if (!qword_10060CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA68);
  }

  return result;
}

unint64_t sub_100317614()
{
  result = qword_10060CA70;
  if (!qword_10060CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA70);
  }

  return result;
}

unint64_t sub_10031766C()
{
  result = qword_10060CA78;
  if (!qword_10060CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA78);
  }

  return result;
}

unint64_t sub_1003176C4()
{
  result = qword_10060CA80;
  if (!qword_10060CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA80);
  }

  return result;
}

unint64_t sub_10031771C()
{
  result = qword_10060CA88;
  if (!qword_10060CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA88);
  }

  return result;
}

unint64_t sub_100317774()
{
  result = qword_10060CA90;
  if (!qword_10060CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA90);
  }

  return result;
}

unint64_t sub_1003177CC()
{
  result = qword_10060CA98;
  if (!qword_10060CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA98);
  }

  return result;
}

unint64_t sub_100317824()
{
  result = qword_10060CAA0;
  if (!qword_10060CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAA0);
  }

  return result;
}

unint64_t sub_10031787C()
{
  result = qword_10060CAA8;
  if (!qword_10060CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAA8);
  }

  return result;
}

unint64_t sub_1003178D4()
{
  result = qword_10060CAB0;
  if (!qword_10060CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAB0);
  }

  return result;
}

unint64_t sub_10031792C()
{
  result = qword_10060CAB8;
  if (!qword_10060CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAB8);
  }

  return result;
}

unint64_t sub_100317984()
{
  result = qword_10060CAC0;
  if (!qword_10060CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAC0);
  }

  return result;
}

unint64_t sub_1003179DC()
{
  result = qword_10060CAC8;
  if (!qword_10060CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAC8);
  }

  return result;
}

unint64_t sub_100317A34()
{
  result = qword_10060CAD0;
  if (!qword_10060CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAD0);
  }

  return result;
}

unint64_t sub_100317A8C()
{
  result = qword_10060CAD8;
  if (!qword_10060CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAD8);
  }

  return result;
}

unint64_t sub_100317AE4()
{
  result = qword_10060CAE0;
  if (!qword_10060CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAE0);
  }

  return result;
}

unint64_t sub_100317B3C()
{
  result = qword_10060CAE8;
  if (!qword_10060CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAE8);
  }

  return result;
}

uint64_t sub_100317B90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (sub_1004BD9C4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (sub_1004BD9C4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (sub_1004BD9C4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1004BD9C4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_100317F5C()
{
  result = qword_10060CB08;
  if (!qword_10060CB08)
  {
    sub_100003B68(&qword_10060CB00);
    sub_100318014();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB08);
  }

  return result;
}

unint64_t sub_100318014()
{
  result = qword_10060CB10;
  if (!qword_10060CB10)
  {
    sub_100003B68(&qword_10060CB18);
    sub_1000206D4(&qword_10060CB20, &qword_10060CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB10);
  }

  return result;
}

uint64_t sub_1003180CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CAF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031813C()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_100003ABC(&unk_10060DD30);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = sub_1004BB914();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_1003182B8@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_10030C02C(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10031AF7C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1003183C0(uint64_t *a1))(void *a1)
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

uint64_t sub_100318448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CAB8();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003184AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CAB8();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100318510(uint64_t a1)
{
  v2 = sub_10031CAB8();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(char a1)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v10[3] = sub_1004B8C04();
  v10[4] = &protocol witness table for TintShapeStyle;
  sub_1000133B0(v10);
  sub_1004B8BF4();
  v9 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v9, a1);
  v7 = v6;
  sub_10031B990(&v9);
  return v7;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_10001342C((a1 + 1), v45);
      sub_100009178(v45, v45[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v18 = sub_1004BBE24();
      v19 = [objc_opt_self() systemImageNamed:v18];

      if (v19)
      {
        v20 = [v19 imageWithConfiguration:*a1];

        v21 = [v20 imageWithRenderingMode:2];
        sub_1004BA314();
        v22 = sub_1004B9D94();
        v24 = v23;
        v26 = v25;
        v27 = sub_1004B9CB4();
        v29 = v28;
        v31 = v30;
        sub_10002FA24(v22, v24, v26 & 1);

        v32 = sub_1004B9C84();
        v34 = v33;
        v36 = v35;
        sub_10002FA24(v27, v29, v31 & 1);

        AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();

        Text.accessibilityLabel(_:)();

        sub_10002FA24(v32, v34, v36 & 1);

        sub_100004C6C(v45);
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

        sub_1004BA344();
        v2 = sub_1004B9D94();
        v4 = v3;
        v6 = v5;
        v7 = sub_1004B9CB4();
        v9 = v8;
        v11 = v10;
        sub_10002FA24(v2, v4, v6 & 1);

        LODWORD(v45[0]) = sub_1004B9654();
        v12 = sub_1004B9C84();
        v14 = v13;
        v16 = v15;
        sub_10002FA24(v7, v9, v11 & 1);

        AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();

        Text.accessibilityLabel(_:)();

        sub_10002FA24(v12, v14, v16 & 1);
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
        sub_1004BC024(v46);

        LODWORD(v44[0]) = sub_1004B9654();
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
  a1[4] = sub_1004B8C04();
  a1[5] = &protocol witness table for TintShapeStyle;
  sub_1000133B0(a1 + 1);
  result = sub_1004B8BF4();
  *a1 = v5;
  return result;
}

uint64_t sub_100318BD0()
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

uint64_t sub_100318C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10031BB64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100318C74(uint64_t a1)
{
  v2 = sub_10031B9C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318CB0(uint64_t a1)
{
  v2 = sub_10031B9C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318CEC(uint64_t a1)
{
  v2 = sub_10031BB10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318D28(uint64_t a1)
{
  v2 = sub_10031BB10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004BD9C4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100318E10(uint64_t a1)
{
  v2 = sub_10031BABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318E4C(uint64_t a1)
{
  v2 = sub_10031BABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318E88(uint64_t a1)
{
  v2 = sub_10031BA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318EC4(uint64_t a1)
{
  v2 = sub_10031BA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318F00(uint64_t a1)
{
  v2 = sub_10031BA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318F3C(uint64_t a1)
{
  v2 = sub_10031BA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_100003ABC(&qword_10060CB68);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v22 - v4;
  v5 = sub_100003ABC(&qword_10060CB70);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v24 = &v22 - v6;
  v25 = sub_100003ABC(&qword_10060CB78);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v22 - v7;
  v9 = sub_100003ABC(&qword_10060CB80);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_100003ABC(&qword_10060CB88);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_100009178(a1, a1[3]);
  sub_10031B9C0();
  v16 = v31;
  sub_1004BDC44();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_10031BB10();
      sub_1004BD824();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_10031BA68();
      v17 = v24;
      sub_1004BD824();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_10031BA14();
      v17 = v28;
      sub_1004BD824();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_10031BABC();
  sub_1004BD824();
  v21 = v25;
  sub_1004BD864();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100319424@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10031BCCC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v60 = sub_1004B80B4();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004BB564();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BBA84();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BB384();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BAD04();
  isa = v10[-1].isa;
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_10060CBB8);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_1004BB434();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004B7644();
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
      sub_1004BB4F4();
      v34 = sub_1004B7744();
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
      sub_1004BACA4();
LABEL_15:
      v38 = sub_1004B7744();
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
      sub_1004BB874();
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
      sub_1004BB274();
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
      v44 = sub_1004B8094();
      v45 = sub_1004BC994();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v70) = v45;
        v47 = v46;
        v71 = swift_slowAlloc();
        v72 = v71;
        *v47 = 136315394;
        *(v47 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v72);
        *(v47 + 12) = 2080;
        sub_10031CB0C(&qword_10060AA20, &type metadata accessor for GenericMusicItem);
        v48 = sub_1004BD934();
        v50 = v49;
        v51 = *(v20 + 8);
        v69 = v44;
        v51(v43, v19);
        v52 = sub_1002C4260(v48, v50, &v72);

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
  sub_1004BB3A4();
  v30 = sub_1004B7744();
  (*(*(v30 - 8) + 56))(v14, 0, 1, v30);
  v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v14);
  (*(v16 + 8))(v18, v15);
  return v31;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v99) = a1;
  v71 = sub_1004B80B4();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1004B7C94();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004B7A34();
  v96 = *(v3 - 8);
  v97 = v3;
  __chkstk_darwin(v3);
  v95 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004B7C34();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060CBC0);
  __chkstk_darwin(v6 - 8);
  v98 = &v65 - v7;
  v8 = sub_1004B7CF4();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v81 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1004B7BB4();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004B7B64();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BBA84();
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v90 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BB744();
  v85 = *(v14 - 8);
  v86 = v14;
  __chkstk_darwin(v14);
  v84 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB384();
  v88 = *(v16 - 8);
  v89 = v16;
  __chkstk_darwin(v16);
  v87 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BAD04();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003ABC(&qword_10060CBC8);
  __chkstk_darwin(v21 - 8);
  v23 = &v65 - v22;
  v24 = sub_1004BB434();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1004B7644();
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
      sub_1004B79F4();
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
      sub_1004BACC4();
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
      sub_1004BB864();
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
      sub_1004BB2F4();
      goto LABEL_16;
    }

    if (v36 == enum case for GenericMusicItem.station(_:))
    {
      (*(v29 + 96))(v34, v28);
      v48 = v84;
      v49 = v85;
      v50 = v86;
      (*(v85 + 32))(v84, v34, v86);
      sub_1004BB704();
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
      sub_1004B7CA4();
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
      sub_1004B7C54();
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
      sub_1004B7BF4();
      goto LABEL_11;
    }

    if (v36 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v29 + 96))(v34, v28);
      v49 = v73;
      v48 = v72;
      v50 = v74;
      (*(v73 + 32))(v72, v34, v74);
      sub_1004B7B24();
      goto LABEL_25;
    }

    if (v36 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v29 + 96))(v34, v28);
      v49 = v67;
      v48 = v66;
      v50 = v68;
      (*(v67 + 32))(v66, v34, v68);
      sub_1004B7B74();
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
      v57 = sub_1004B8094();
      LODWORD(v100) = sub_1004BC964();
      if (os_log_type_enabled(v57, v100))
      {
        v58 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v101 = v99;
        *v58 = 136315394;
        *(v58 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v101);
        *(v58 + 12) = 2080;
        sub_10031CB0C(&qword_10060AA20, &type metadata accessor for GenericMusicItem);
        v59 = v65;
        v60 = sub_1004BD934();
        v62 = v61;
        v63 = *(v29 + 8);
        v63(v59, v28);
        v64 = sub_1002C4260(v60, v62, &v101);

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
  sub_1004BB3F4();
  v37 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v23, v99 & 1);
  (*(v25 + 8))(v27, v24);
  return v37;
}

double sub_10031AF7C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1004B9C44();
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
  sub_1004B9C14();
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
  sub_1004B9C34();
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
  sub_1004B9C34();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  sub_1004B9C34();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  sub_1004B9C24();
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
  sub_1004B9C34();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v24 = a2;
  v3 = sub_1004BB244();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003ABC(&qword_10060CC80);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v23[-v9];
  v11 = sub_100003ABC(&qword_10060CBC8);
  __chkstk_darwin(v11 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v14);
  v17 = &v23[-v16];
  (*(v4 + 104))(&v23[-v16], enum case for ContentRating.explicit(_:), v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = *(v8 + 56);
  sub_10000F778(a1, v10, &qword_10060CBC8);
  sub_10000F778(v17, &v10[v18], &qword_10060CBC8);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    sub_10000F778(v10, v13, &qword_10060CBC8);
    if (v19(&v10[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v18], v3);
      sub_10031CB0C(&qword_10060CC88, &type metadata accessor for ContentRating);
      v21 = sub_1004BBD84();
      sub_100007214(a1, &qword_10060CBC8);
      v22 = *(v4 + 8);
      v22(v6, v3);
      sub_100007214(v17, &qword_10060CBC8);
      v22(v13, v3);
      sub_100007214(v10, &qword_10060CBC8);
      if (v21)
      {
        return v24 & 1;
      }

      return 2;
    }

    sub_100007214(a1, &qword_10060CBC8);
    sub_100007214(v17, &qword_10060CBC8);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_100007214(v10, &qword_10060CC80);
    return 2;
  }

  sub_100007214(a1, &qword_10060CBC8);
  sub_100007214(v17, &qword_10060CBC8);
  if (v19(&v10[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_100007214(v10, &qword_10060CBC8);
  return v24 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  v4 = sub_100003ABC(&qword_10060CBC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1004B7BD4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a1, v6, &qword_10060CBC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100007214(a1, &qword_10060CBC0);
    sub_100007214(v6, &qword_10060CBC0);
    return 2;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1004B7BC4();
    sub_100007214(a1, &qword_10060CBC0);
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
  v2 = sub_100003ABC(&qword_10060CBB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_10000F778(a1, &v13 - v6, &qword_10060CBB8);
  v8 = sub_1004B7744();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_10000F778(v7, v4, &qword_10060CBB8);
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
  sub_100007214(v7, &qword_10060CBB8);
  sub_100007214(a1, &qword_10060CBB8);
  return v11;
}

unint64_t sub_10031B9C0()
{
  result = qword_10060CB90;
  if (!qword_10060CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB90);
  }

  return result;
}

unint64_t sub_10031BA14()
{
  result = qword_10060CB98;
  if (!qword_10060CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB98);
  }

  return result;
}

unint64_t sub_10031BA68()
{
  result = qword_10060CBA0;
  if (!qword_10060CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBA0);
  }

  return result;
}

unint64_t sub_10031BABC()
{
  result = qword_10060CBA8;
  if (!qword_10060CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBA8);
  }

  return result;
}

unint64_t sub_10031BB10()
{
  result = qword_10060CBB0;
  if (!qword_10060CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBB0);
  }

  return result;
}

uint64_t sub_10031BB64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004BD9C4();

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

uint64_t sub_10031BCCC(void *a1)
{
  v39 = sub_100003ABC(&qword_10060CC58);
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v32 - v2;
  v38 = sub_100003ABC(&qword_10060CC60);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v32 - v3;
  v4 = sub_100003ABC(&qword_10060CC68);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_100003ABC(&qword_10060CC70);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100003ABC(&qword_10060CC78);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  sub_100009178(a1, v15);
  sub_10031B9C0();
  v16 = v44;
  sub_1004BDC34();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = sub_1004BD814();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_100310BFC();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = sub_1004BD4B4();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      sub_100003ABC(&qword_10060C568);
      *v26 = &type metadata for TextBadge;
      sub_1004BD794();
      sub_1004BD4A4();
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
        sub_10031BA68();
        sub_1004BD784();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_10031BA14();
        sub_1004BD784();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_10031BABC();
      v29 = v34;
      sub_1004BD784();
      v30 = v36;
      v31 = sub_1004BD7D4();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_10031BB10();
      sub_1004BD784();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  sub_100004C6C(v45);
  return v12;
}

unint64_t sub_10031C3AC()
{
  result = qword_10060CBD0;
  if (!qword_10060CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBD0);
  }

  return result;
}

unint64_t sub_10031C404()
{
  result = qword_10060CBD8;
  if (!qword_10060CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBD8);
  }

  return result;
}

unint64_t sub_10031C45C()
{
  result = qword_10060CBE0;
  if (!qword_10060CBE0)
  {
    sub_100003B68(&qword_10060CBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBE0);
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

unint64_t sub_10031C69C()
{
  result = qword_10060CBF0;
  if (!qword_10060CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBF0);
  }

  return result;
}

unint64_t sub_10031C6F4()
{
  result = qword_10060CBF8;
  if (!qword_10060CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBF8);
  }

  return result;
}

unint64_t sub_10031C74C()
{
  result = qword_10060CC00;
  if (!qword_10060CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC00);
  }

  return result;
}

unint64_t sub_10031C7A4()
{
  result = qword_10060CC08;
  if (!qword_10060CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC08);
  }

  return result;
}

unint64_t sub_10031C7FC()
{
  result = qword_10060CC10;
  if (!qword_10060CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC10);
  }

  return result;
}

unint64_t sub_10031C854()
{
  result = qword_10060CC18;
  if (!qword_10060CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC18);
  }

  return result;
}

unint64_t sub_10031C8AC()
{
  result = qword_10060CC20;
  if (!qword_10060CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC20);
  }

  return result;
}

unint64_t sub_10031C904()
{
  result = qword_10060CC28;
  if (!qword_10060CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC28);
  }

  return result;
}

unint64_t sub_10031C95C()
{
  result = qword_10060CC30;
  if (!qword_10060CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC30);
  }

  return result;
}

unint64_t sub_10031C9B4()
{
  result = qword_10060CC38;
  if (!qword_10060CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC38);
  }

  return result;
}

unint64_t sub_10031CA0C()
{
  result = qword_10060CC40;
  if (!qword_10060CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC40);
  }

  return result;
}

unint64_t sub_10031CA64()
{
  result = qword_10060CC48;
  if (!qword_10060CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC48);
  }

  return result;
}

unint64_t sub_10031CAB8()
{
  result = qword_10060CC50;
  if (!qword_10060CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC50);
  }

  return result;
}

uint64_t sub_10031CB0C(unint64_t *a1, void (*a2)(uint64_t))
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

  sub_100003ABC(&qword_10060EC20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C4D40;
  if (a3)
  {
    a3 = sub_1004BBE24();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10031CD74();
  isa = sub_1004BC284().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  sub_100003ABC(&qword_10060EC20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C4D40;
  if (a4)
  {
    a4 = sub_1004BBE24();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10031CD74();
  isa = sub_1004BC284().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_10031CD74()
{
  result = qword_10060CC90;
  if (!qword_10060CC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060CC90);
  }

  return result;
}

uint64_t sub_10031CDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CEF4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10031CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CEF4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10031CEBC()
{
  sub_10031CEF4();
  sub_1004B94B4();
  __break(1u);
}

unint64_t sub_10031CEF4()
{
  result = qword_10060CC98;
  if (!qword_10060CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC98);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x50);
  type metadata accessor for Card.ViewController.RootViewController();
  v5 = sub_10031EA14(a1);
  *&v2[qword_10060CCA0] = v5;
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

    sub_100003ABC(&qword_10060EC20);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004C4D40;
    sub_100009130(0, &qword_10060CCA8);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
    v12 = v6;
    v13 = v7;
    v14 = sub_1004BCD64();

    *(v10 + 32) = v14;
    isa = sub_1004BC284().super.isa;

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

id sub_10031D254(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10031DF44(0, 1);
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
  sub_10031DF44(0, 1);
  [v0 setPreferredContentSize:?];
  sub_100003ABC(qword_10060CCB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = sub_1004B83D4();
  *(v2 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004BCA74();
  swift_unknownObjectRelease();
}

void sub_10031D4B4(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_10031DF44(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Card.ViewController();
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_10031D5D0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_10031D68C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for Card.ViewController.RootViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10031DB48();
    [v2 addSubview:v3];

    v4 = *&v0[qword_10060CD38];
    v5 = *&v0[qword_10060CD48];
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

void sub_10031D7B4(void *a1)
{
  v1 = a1;
  sub_10031D68C();
}

id sub_10031D7FC()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for Card.ViewController.RootViewController();
  objc_msgSendSuper2(&v48, "viewDidLayoutSubviews");
  sub_10031DD94();
  v2 = *&v0[qword_10060CD48];
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
  sub_10031DD94();
  sub_1004BCD14();
  sub_1004B93B4();
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
  sub_10031DCE4(Height < v14);
  v25 = sub_10031DB48();
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
  sub_1004BCD24();
  [v25 setContentSize:{Width, v14 + v36}];

  result = [*&v1[qword_10060CD48] view];
  if (result)
  {
    v37 = result;
    v38 = qword_10060CD38;
    v39 = *&v1[qword_10060CD38];
    sub_1004BCD84();
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

void sub_10031DB00(void *a1)
{
  v1 = a1;
  sub_10031D7FC();
}

id sub_10031DB48()
{
  v1 = qword_10060CD38;
  v2 = *&v0[qword_10060CD38];
  if (v2)
  {
    v3 = *&v0[qword_10060CD38];
  }

  else
  {
    v4 = sub_10031DBAC(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10031DBAC(void *a1)
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

void sub_10031DCE4(char a1)
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

      sub_10031DD94();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10031DD94()
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

void sub_10031DF44(uint64_t a1, char a2)
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

  v22 = *&v3[qword_10060CD48];
  sub_10031DD94();
  sub_1004BCD14();
  sub_1004B93B4();
  v24 = v23;

  sub_10031DD94();
  sub_1004BCD24();
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
    sub_10031DCE4(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_10031E1EC(uint64_t a1)
{
  v2 = *(a1 + qword_10060CD48);
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

void sub_10031E3CC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_10031EC50();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1004BBE24();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_10031E508(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id sub_10031E5A4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_10031E62C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = sub_1004B98E4();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *(v2 + qword_10060CD38) = 0;
  *(v2 + qword_10060CD40) = 0x4079E00000000000;
  v12 = *((v5 & v4) + 0x58);
  sub_1004B9414();
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_1004B93E4();
  sub_1004B98D4();
  sub_1004B93C4();
  sub_1004B93D4();
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = objc_opt_self();
    v17 = [v16 clearColor];
    [v15 setBackgroundColor:v17];

    *(v2 + qword_10060CD48) = v13;
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

      [v20 addChildViewController:*&v20[qword_10060CD48]];
      v23 = [v20 navigationItem];
      sub_100009130(0, &qword_10060ABA8);
      sub_100009130(0, &qword_10060AC30);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v25 = swift_allocObject();
      v25[2] = v7;
      v25[3] = v12;
      v25[4] = v24;
      v28.value.super.super.isa = sub_1004BCFD4();
      v28.is_nil = 0;
      isa = sub_1004BC9E4(UIBarButtonSystemItemClose, v28, v29).super.super.isa;
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

uint64_t sub_10031EA68()
{

  return swift_deallocObject();
}

id sub_10031EB20(void *a1)
{
  sub_10031DF44(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_10031EB74()
{
  *(v0 + qword_10060CD38) = 0;
  *(v0 + qword_10060CD40) = 0x4079E00000000000;
  sub_1004BD624();
  __break(1u);
}

uint64_t sub_10031ED20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10031ED58()
{

  return swift_deallocObject();
}

uint64_t sub_10031ED9C()
{
  sub_1004BC3B4();
  sub_1004BA604();
  sub_1004BA594();
  return v1;
}

uint64_t sub_10031EDF8()
{
  sub_1004BC3B4();
  sub_1004BA604();
  sub_1004BA5B4();
  return v1;
}

double sub_10031EEDC()
{
  sub_100003ABC(&qword_10060CFB8);
  sub_1004BA594();
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
  v28 = sub_1004BD174();
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
  sub_1004BA414();
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
  result = sub_100324DE4(a4, a9 + v31[17]);
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
  v2 = sub_1004BD174();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_1004BA414();
  return (*(v3 + 8))(a1, v2);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v97 = sub_1004B8BD4();
  v89 = *(v97 - 8);
  __chkstk_darwin(v97);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 - 1);
  v96 = *(v86 + 64);
  __chkstk_darwin(v4);
  v95 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  v7 = sub_1004BC3B4();
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
  v12 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  v14 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = v7;
  *&v115 = AssociatedTypeWitness;
  *(&v115 + 1) = v12;
  v116 = WitnessTable;
  v117 = AssociatedConformanceWitness;
  sub_1004BA674();
  v114 = v10;
  *&v115 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = &protocol witness table for _FrameLayout;
  v111 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_1004B86F4();
  v17 = swift_getWitnessTable();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeMetadata2();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_1004B8734();
  v19 = swift_getWitnessTable();
  v114 = v18;
  *&v115 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_1004B9694();
  sub_1004B8D64();
  sub_100003B68(&qword_10060CDD8);
  v20 = sub_1004B8D64();
  v21 = sub_1004B98B4();
  v114 = v18;
  *&v115 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_100326730(&qword_10060CDE0, &type metadata accessor for SafeAreaPaddingModifier);
  v109 = v22;
  v110 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_100324E54();
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
  sub_1004B8D64();
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
  sub_1004B8D64();
  sub_1004BD174();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  v36 = sub_1004BA564();
  v80 = *(v36 - 8);
  __chkstk_darwin(v36);
  v71 = &v70 - v37;
  v74 = v36;
  v38 = sub_1004B8D64();
  v79 = v38;
  v84 = *(v38 - 8);
  __chkstk_darwin(v38);
  v91 = &v70 - v39;
  v72 = swift_getWitnessTable();
  v105 = v72;
  v106 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v78 = v40;
  v77 = sub_100326730(qword_10060CDF0, &type metadata accessor for ScrollPosition);
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
  sub_1004B9344();
  sub_1004BA554();
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
  sub_1004BA134();

  (*(v80 + 8))(v53, v52);
  sub_100003ABC(&qword_10060CDD0);
  v54 = v88;
  sub_1004BA594();
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
  sub_1004BA144();

  (*(v89 + 8))(v54, v61);
  (*(v84 + 8))(v64, v60);
  v114 = v60;
  *&v115 = v61;
  *(&v115 + 1) = v62;
  v116 = v63;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v75;
  v67 = v82;
  sub_100318364(v59, v82, v65);
  v68 = *(v83 + 8);
  v68(v59, v67);
  sub_100318364(v66, v67, v65);
  return (v68)(v66, v67);
}

uint64_t sub_10031FF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
  v17 = sub_1004B8D64();
  v191 = *(v17 - 8);
  __chkstk_darwin(v17);
  v149 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v147 = &v145 - v20;
  v195 = v21;
  *&v196 = COERCE_DOUBLE(sub_1004BD174());
  v192 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v193 = &v145 - v24;
  v25 = sub_1004B9734();
  v189 = *(v25 - 8);
  v190 = v25;
  __chkstk_darwin(v25);
  v184 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1004B9894();
  __chkstk_darwin(v27 - 8);
  v186 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1004B98B4();
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
  v31 = sub_100003ABC(&qword_10060CDD0);
  __chkstk_darwin(v31 - 8);
  v198 = &v145 - v32;
  v33 = sub_1004BC3B4();
  v210 = a6;
  v212 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v228 = a3;
  v229 = a7;
  v204 = a7;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v33;
  v229 = AssociatedTypeWitness;
  v230 = v35;
  v231 = WitnessTable;
  v232 = AssociatedConformanceWitness;
  sub_1004BA674();
  v38 = v201;
  v228 = v201;
  v229 = a7;
  *&v227[16] = swift_getOpaqueTypeConformance2();
  *&v227[17] = &protocol witness table for _FrameLayout;
  *&v227[15] = swift_getWitnessTable();
  swift_getWitnessTable();
  v39 = sub_1004B86F4();
  v40 = swift_getWitnessTable();
  v228 = v39;
  v229 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v39;
  v229 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1004B8734();
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
  sub_1004B9694();
  v47 = sub_1004B8D64();
  v165 = *(v47 - 8);
  __chkstk_darwin(v47);
  v203 = &v145 - v48;
  sub_100003B68(&qword_10060CDD8);
  v159 = v47;
  v49 = sub_1004B8D64();
  v164 = *(v49 - 8);
  __chkstk_darwin(v49);
  v161 = &v145 - v50;
  v228 = v41;
  v229 = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v152 = v51;
  v52 = sub_100326730(&qword_10060CDE0, &type metadata accessor for SafeAreaPaddingModifier);
  *&v227[13] = v51;
  *&v227[14] = v52;
  v53 = swift_getWitnessTable();
  v156 = v53;
  v54 = sub_100324E54();
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
  *&v71 = COERCE_DOUBLE(sub_1004B8D64());
  v205 = *(v71 - 8);
  v206 = *&v71;
  __chkstk_darwin(v71);
  v188 = &v145 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v170 = &v145 - v74;
  __chkstk_darwin(v75);
  v211 = &v145 - v76;
  sub_1004B9914();
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
  sub_1004B8744();
  v80 = v207;
  sub_100003ABC(&qword_10060CDD0);
  v81 = v198;
  sub_1004BA5B4();
  sub_1004BA8B4();
  v82 = v153;
  sub_1004B9EC4();
  sub_100326564(v81);
  (*(v162 + 8))(v43, v41);
  v83 = sub_1004B9954();
  v84 = v80;
  v85 = (v79 + *(v80 + 96));
  v86 = *v85;
  v87 = v85[1];
  v228 = v86;
  v229 = v87;
  sub_100003ABC(&qword_10060CFA0);
  sub_1004BA424();
  v88 = v160;
  sub_1003225E4(v83, COERCE__INT64(round(v227[0])), 0);
  (*(v163 + 8))(v82, v88);
  _s3__C6CGSizeVMa_0(0);
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
  sub_100326730(&qword_10060CFA8, _s3__C6CGSizeVMa_0);
  v98 = v161;
  v99 = v159;
  v100 = v203;
  sub_1003229E8();

  (*(v165 + 8))(v100, v99);
  sub_1004B9884();
  v101 = v185;
  sub_1004B98A4();
  v102 = v154;
  v103 = v202;
  sub_1004BA004();
  (*(v187 + 8))(v101, v103);
  (*(v164 + 8))(v98, v102);
  sub_1004B9724();
  sub_100003ABC(&qword_10060CFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  LOBYTE(v101) = sub_1004B9934();
  *(inited + 32) = v101;
  v105 = sub_1004B9914();
  *(inited + 33) = v105;
  sub_1004B9924();
  sub_1004B9924();
  if (sub_1004B9924() != v101)
  {
    sub_1004B9924();
  }

  sub_1004B9924();
  if (sub_1004B9924() != v105)
  {
    sub_1004B9924();
  }

  v106 = v171;
  v107 = v180;
  sub_1004B9F64();
  (*(v189 + 8))(v97, v190);
  (*(v179 + 8))(v94, v107);
  v108 = v167;
  v109 = v177;
  sub_1004B9FC4();
  (*(v176 + 8))(v106, v109);
  sub_10031ED9C();
  sub_1004BC344();

  v111 = v168;
  v110 = v169;
  v112 = v178;
  sub_1004B9EB4();
  (*(v172 + 8))(v108, v112);
  sub_10031EEDC();
  sub_1004BA754();
  v228 = v112;
  v229 = v110;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v170;
  v115 = v175;
  sub_1004BA0A4();
  (*(v174 + 8))(v111, v115);
  *&v227[4] = v113;
  *&v227[5] = &protocol witness table for _FrameLayout;
  v116 = v206;
  v202 = swift_getWitnessTable();
  sub_100318364(v114, *&v116, v202);
  v117 = v114;
  v118 = v212;
  v203 = *(v205 + 8);
  v204 = v205 + 8;
  (v203)(v117, *&v116);
  sub_10031ED9C();
  v119 = sub_1004BC344();

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
    v120 = sub_10031EDF8();
    v122 = v121;
    v124 = v123;
    sub_100003ABC(&qword_10060CDD0);
    v125 = v198;
    sub_1004BA5B4();
    v126 = v146;
    *v146 = v120;
    v126[1] = v122;
    v126[2] = v124;
    v228 = v118;
    v229 = v199;
    v230 = v200;
    v231 = v210;
    v127 = type metadata accessor for PageControl();
    sub_100324DE4(v125, v126 + *(v127 + 52));
    sub_1004BA754();
    v128 = v208;
    v129 = swift_getWitnessTable();
    v130 = v149;
    sub_1004BA0A4();
    (*(v148 + 8))(v126, v128);
    v220 = v129;
    v221 = &protocol witness table for _FrameLayout;
    v131 = v195;
    v132 = swift_getWitnessTable();
    v133 = v147;
    sub_100318364(v130, v131, v132);
    v134 = v191;
    v135 = *(v191 + 8);
    v135(v130, v131);
    sub_100318364(v133, v131, v132);
    v135(v133, v131);
    v136 = v194;
    (*(v134 + 32))(v194, v130, v131);
    (*(v134 + 56))(v136, 0, 1, v131);
  }

  v137 = v193;
  sub_10037A260(v136, v193);
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
  sub_100379EFC(&v228, 2uLL, v227);
  v139(v137, *&v140);
  v143 = v203;
  (v203)(v211, *&v141);
  v139(v136, *&v140);
  return v143(v142, *&v141);
}

uint64_t sub_1003215BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a5;
  v46 = a4;
  v49 = a1;
  v50 = a8;
  v12 = sub_1004B95E4();
  __chkstk_darwin(v12 - 8);
  v47 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BC3B4();
  v45 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = a3;
  v59 = a7;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v14;
  v59 = AssociatedTypeWitness;
  v60 = v16;
  v61 = WitnessTable;
  v62 = AssociatedConformanceWitness;
  v41 = sub_1004BA674();
  v58 = a3;
  v59 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = &protocol witness table for _FrameLayout;
  v64 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v19 = sub_1004B86F4();
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
  v37[2] = sub_1004B9204();
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
  sub_100322564();
  v32 = v38;
  sub_1004B86E4();
  v33 = v39;
  sub_1004B9FD4();
  (*(v44 + 8))(v32, v19);
  v58 = v19;
  v59 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  sub_100318364(v23, OpaqueTypeMetadata2, v34);
  v35 = *(v43 + 8);
  v35(v23, OpaqueTypeMetadata2);
  sub_100318364(v26, OpaqueTypeMetadata2, v34);
  return (v35)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_100321AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
  v15 = sub_1004BC3B4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = AssociatedTypeWitness;
  v57 = a3;
  v58 = a7;
  v44 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_1004B8D64();
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
  v20 = sub_1004BA674();
  v48 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v40 = v39 - v24;
  v25 = v12;
  v26 = v49;
  v56 = sub_10031ED9C();
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
  sub_1004BA664();
  v53 = v34;
  v35 = swift_getWitnessTable();
  v36 = v40;
  sub_100318364(v22, v20, v35);
  v37 = *(v48 + 8);
  v37(v22, v20);
  sub_100318364(v36, v20, v35);
  return (v37)(v36, v20);
}

uint64_t sub_100321EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
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
  v61 = sub_1004B8D64();
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
  sub_1004B9E64();

  (*(v68 + 8))(v43, v39);
  sub_10031EEDC();
  sub_10031EEDC();
  sub_1004BA754();
  v75 = v39;
  v76 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = OpaqueTypeMetadata2;
  sub_1004BA0A4();
  (*(v70 + 8))(v42, v46);
  v73 = OpaqueTypeConformance2;
  v74 = &protocol witness table for _FrameLayout;
  v47 = v61;
  WitnessTable = swift_getWitnessTable();
  v49 = v63;
  sub_100318364(v45, v47, WitnessTable);
  v50 = *(v71 + 8);
  v50(v45, v47);
  sub_100318364(v49, v47, WitnessTable);
  return (v50)(v49, v47);
}

uint64_t sub_1003224BC(uint64_t a1, char a2)
{
  v2 = 0;
  if (a2)
  {
    v2 = sub_1004BA7B4();
  }

  __chkstk_darwin(v2);
  sub_1004B8B24();
}

uint64_t sub_100322564()
{
  sub_1004B95E4();
  sub_100326730(&unk_10060CFC0, &type metadata accessor for PinnedScrollableViews);
  return sub_1004BDC74();
}

uint64_t sub_1003225E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1004B9694();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0uLL;
  v9 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1004B86C4();
    *(&v8 + 1) = v10;
    *(&v9 + 1) = v11;
  }

  v13[0] = v8;
  v13[1] = v9;
  v14 = a3 & 1;
  sub_1004B9684();
  sub_1004BA124();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100322720@<X0>(void *a1@<X8>)
{
  result = sub_1004B8A34();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10032274C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_1004BD174();
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
  v23 = (v21 - sub_10031EEDC()) * 0.5;
  v24 = (a2 + *(v22 + 96));
  v25 = *v24;
  v26 = v24[1];
  v33 = *v24;
  v34 = v26;
  sub_100003ABC(&qword_10060CFA0);
  sub_1004BA424();
  if (v32 != v23)
  {
    v32 = v23;
    v33 = v25;
    v34 = v26;
    sub_1004BA434();
  }

  sub_1004BA454();
  sub_1004BA424();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v28 = v29;
  (*(v18 + 32))(v29, v17, a3);
  sub_1003224BC(v28, 0);
  return (*(v18 + 8))(v28, a3);
}

uint64_t sub_1003229E8()
{

  sub_1004B96A4();
  sub_1004B96B4();
  sub_1004BA124();
}

uint64_t sub_100322AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a7;
  v34 = a4;
  v37 = a1;
  v10 = sub_1004BD174();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v33 = &v28 - v11;
  v32 = *(a2 - 8);
  __chkstk_darwin(v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004B8BD4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1004BD174();
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
  sub_100003ABC(&qword_10060CDD0);
  sub_1004BA594();
  swift_getAssociatedConformanceWitness();
  sub_1004B8BB4();
  (*(v15 + 8))(v17, v14);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v22, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v23 = v19;
  v38 = sub_10031ED9C();
  sub_1004BC3B4();
  swift_getWitnessTable();
  v24 = v33;
  sub_1004BC7B4();
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

    sub_1003224BC(v27, 0);
    (*(v25 + 8))(v27, a2);
    return (*(v20 + 8))(v22, v23);
  }
}

uint64_t sub_100322F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a6;
  v55 = a7;
  v53 = a5;
  v57 = a3;
  v11 = sub_1004BD174();
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
  v18 = sub_1004BD174();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  swift_getAssociatedConformanceWitness();
  sub_1004B8BB4();
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
  v31 = sub_10031ED9C();
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
  sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC784();

  if (v60 == 1)
  {
    return (*(v46 + 8))(v32, AssociatedTypeWitness);
  }

  v33 = v59;
  v34 = v44;
  v35 = v57;
  sub_10031ED9C();
  v36 = v56;
  v55 = v33;
  sub_1004BC3C4();

  v37 = v50;
  v38 = v48;
  (*(v50 + 16))(v48, v36, a4);
  (*(v37 + 56))(v38, 0, 1, a4);
  v40 = v51;
  v39 = v52;
  (*(v51 + 16))(v49, v38, v52);
  sub_1004BA454();
  sub_1004BA434();
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

uint64_t sub_10032349C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_1004BD424();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1004BBD84();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_1003235E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v21 = a8;
  v12 = sub_1004B8BD4();
  __chkstk_darwin(v12 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = v19 - v14;
  sub_1004BD424();
  sub_1004BA8B4();
  v19[1] = v17;
  v19[2] = v16;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v20;
  v27 = a7;
  v28 = v21;
  type metadata accessor for CarouselView();
  sub_100003ABC(&qword_10060CDD0);
  sub_1004BA594();
  swift_getAssociatedConformanceWitness();
  sub_1004B8BC4();
  (*(v22 + 8))(v15, AssociatedTypeWitness);
  return sub_1004BA5A4();
}

void *sub_1003237E4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060CDD0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v5;
  type metadata accessor for PageControl.Coordinator();
  v6 = sub_10031EDF8();
  v8 = v7;
  v10 = v9;
  sub_100003ABC(&qword_10060CDD0);
  sub_1004BA5B4();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v8;
  v11[4] = v10;
  sub_100324DE4(v4, v11 + qword_10060CE98);
  return v11;
}

void *sub_1003238FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_100324DE4(a4, v8 + qword_10060CE98);
  return v8;
}

uint64_t sub_10032396C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1004B8BD4();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v60 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = sub_1004BD174();
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
  v66 = sub_1004BD174();
  v53 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_100003ABC(&qword_10060CDD0);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  swift_getWitnessTable();
  sub_1004B9774();
  sub_1004B9764();
  v23 = v72;
  sub_100003ABC(&qword_10060CDD0);
  sub_1004BA5B4();
  v24 = qword_10060CE98;
  swift_beginAccess();
  v55 = v23;
  sub_100326304(v22, v23 + v24);
  swift_endAccess();
  v25 = [a1 numberOfPages];
  sub_10031ED9C();
  v26 = sub_1004BC344();

  if (v25 != v26)
  {
    sub_10031ED9C();
    v27 = sub_1004BC344();

    [a1 setNumberOfPages:v27];
  }

  v64 = a1;
  v68 = a3;
  v61 = v4;
  v72 = sub_10031ED9C();
  v28 = v9;
  v29 = sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC154();

  v70 = v71;
  sub_1004BD694();
  sub_1004BD664();
  v49 = v29;
  sub_1004BD684();
  v30 = (v53 + 32);
  v31 = TupleTypeMetadata2;
  v32 = (v54 + 32);
  v33 = (v54 + 8);
  while (1)
  {
    v34 = v65;
    sub_1004BD674();
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
  sub_100003ABC(&qword_10060CDD0);
  v39 = v57;
  sub_1004BA594();
  v40 = v60;
  v41 = v28;
  v42 = v63;
  swift_getAssociatedConformanceWitness();
  v43 = v56;
  sub_1004B8BB4();
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
    v71 = sub_10031ED9C();
    __chkstk_darwin(v71);
    *(&v49 - 6) = v41;
    *(&v49 - 5) = *(v38 + 24);
    *(&v49 - 3) = v40;
    *(&v49 - 2) = v46;
    swift_getWitnessTable();
    sub_1004BC784();

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

uint64_t sub_1003241D8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_1004BD424();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1004BBD84();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_100324320(void *a1)
{
  v2 = v1;
  v59 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v51 = &v45 - v5;
  v6 = sub_1004BD174();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v54 = &v45 - v8;
  v9 = sub_1004B8BD4();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100003ABC(&qword_10060CDD0);
  __chkstk_darwin(v57);
  v56 = &v45 - v11;
  v63 = *(v6 - 8);
  __chkstk_darwin(v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v61 = &v45 - v18;
  v62 = sub_1004BA604();
  v55 = *(v62 - 8);
  *&v19 = __chkstk_darwin(v62).n128_u64[0];
  v60 = &v45 - v20;
  v21 = [a1 currentPage];
  v67 = *(v2 + 16);
  v68 = *(v2 + 24);
  sub_1004BC3B4();
  sub_1004BA604();
  swift_getWitnessTable();
  result = sub_1004BA5D4();
  if (v21 >= v65 && v21 < v66)
  {
    v67 = *(v2 + 16);
    v68 = *(v2 + 24);
    v65 = v21;
    v48 = TupleTypeMetadata2;
    sub_1004BA5E4();
    v23 = qword_10060CE98;
    swift_beginAccess();
    v46 = v23;
    v24 = v2 + v23;
    v25 = v56;
    sub_1003264F4(v24, v56);
    v26 = v58;
    sub_1004BA594();
    sub_100326564(v25);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1004B8BB4();
    (*(v52 + 8))(v26, v53);
    sub_1004BA5F4();
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
        v43 = sub_1004BBD84();
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
        sub_1003264F4(v2 + v46, v56);
        v37 = v51;
        v38 = v62;
        v39 = v60;
        sub_1004BA5F4();
        sub_1004BA594();
        sub_1004B8BC4();
        (*(v64 + 8))(v37, AssociatedTypeWitness);
        sub_1004BA5A4();
        sub_100326564(v36);
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

uint64_t sub_100324B78(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100324320(v3);
}

uint64_t sub_100324BC8()
{

  sub_100326564(v0 + qword_10060CE98);
  return v0;
}

uint64_t sub_100324C1C()
{
  sub_100324BC8();

  return swift_deallocClassInstance();
}

void *sub_100324C84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1003237E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100324CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100324D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100324DA4()
{
  swift_getWitnessTable();
  sub_1004B94B4();
  __break(1u);
}

uint64_t sub_100324DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100324E54()
{
  result = qword_10060CDE8;
  if (!qword_10060CDE8)
  {
    sub_100003B68(&qword_10060CDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CDE8);
  }

  return result;
}

uint64_t sub_100324EEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for CarouselView() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_100322AC4(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100324FA8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CarouselView() - 8);
  return sub_100322F34(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_1003250C4()
{
  sub_1004BC3B4();
  sub_1004BA604();
  if (v0 <= 0x3F)
  {
    sub_100325918(319, &qword_10060CE78, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      sub_100325918(319, &qword_10060CE80, _s3__C6CGSizeVMa_0);
      if (v2 <= 0x3F)
      {
        sub_100316910();
        if (v3 <= 0x3F)
        {
          sub_10032596C();
          if (v4 <= 0x3F)
          {
            sub_1004BD174();
            sub_1004BA454();
            if (v5 <= 0x3F)
            {
              sub_1003259D0();
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

uint64_t sub_100325234(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004B8BD4();
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

void sub_10032551C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004B8BD4();
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

void sub_100325918(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BA604();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10032596C()
{
  if (!qword_10060CE88)
  {
    sub_100003B68(&qword_10060F640);
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060CE88);
    }
  }
}

void sub_1003259D0()
{
  if (!qword_10060CE90)
  {
    v0 = sub_1004BA454();
    if (!v1)
    {
      atomic_store(v0, &qword_10060CE90);
    }
  }
}

void sub_100325A20()
{
  sub_100325918(319, &qword_10060CE78, &type metadata accessor for ScrollPosition);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100325AF0()
{
  sub_1004BC3B4();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1004B8D64();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1004BA674();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004B86F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1004B8734();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1004B9694();
  sub_1004B8D64();
  sub_100003B68(&qword_10060CDD8);
  sub_1004B8D64();
  sub_1004B98B4();
  swift_getOpaqueTypeConformance2();
  sub_100326730(&qword_10060CDE0, &type metadata accessor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  sub_100324E54();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1004B8D64();
  type metadata accessor for PageControl();
  sub_1004B8D64();
  sub_1004BD174();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA564();
  sub_1004B8D64();
  sub_1004B8BD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100326730(qword_10060CDF0, &type metadata accessor for ScrollPosition);
  return swift_getOpaqueTypeConformance2();
}

void sub_1003260A4()
{
  sub_1004BC3B4();
  sub_1004BA604();
  if (v0 <= 0x3F)
  {
    sub_100325918(319, &qword_10060CE78, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100326168(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_10060CDD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100326238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060CDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100326304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10032639C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIPageControl) init];
  type metadata accessor for PageControl();
  swift_getWitnessTable();
  sub_1004B9774();
  sub_1004B9764();
  [v3 addTarget:a2 action:"updateCurrentPage:" forControlEvents:4096];

  v4 = objc_opt_self();
  v5 = [v4 systemFillColor];
  [v3 setPageIndicatorTintColor:v5];

  v6 = [v4 labelColor];
  [v3 setCurrentPageIndicatorTintColor:v6];

  return v3;
}

uint64_t sub_1003264F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326564(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060CDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100326638(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_10032274C(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100326730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100326778()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[17];

  v4 = *(sub_100003ABC(&qword_10060CDD0) + 32);
  v5 = sub_1004B8BD4();
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

  sub_1004BD174();
  sub_1004BA454();

  return swift_deallocObject();
}

uint64_t sub_1003269C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_100321EDC(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_100326A94()
{
  v11 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v10 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(v11 - 8);
  v4 = *(v3 + 80);

  v5 = v0 + v2 + v1[17];

  v6 = *(sub_100003ABC(&qword_10060CDD0) + 32);
  v7 = sub_1004B8BD4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v2 + v1[22]))
  {
  }

  v8 = v0 + v2 + v1[23];
  if (!(*(v3 + 48))(v8, 1, v11))
  {
    (*(v3 + 8))(v8, v11);
  }

  sub_1004BD174();
  sub_1004BA454();

  (*(v3 + 8))(v0 + ((v2 + v10 + v4) & ~v4), v11);
  return swift_deallocObject();
}

uint64_t sub_100326D20()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CarouselView() - 8);
  v3 = (((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  type metadata accessor for CarouselView();
  return sub_1003224BC(v0 + v3, 1);
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

        sub_100328B64(sub_100329078, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_100003ABC(&qword_10060EC20);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1004C4D40;
        sub_100009130(0, &qword_10060CFF0);
        *(v23 + 32) = sub_1004BCF84(4);
        isa = sub_1004BC284().super.isa;

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

      sub_100328B64(sub_1003280E0, v14, 0.0);

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
      sub_100328B64(sub_1003296E4, v18, v8);

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
    *(v11 + 24) = 0x80000001005086B0;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_10032884C();
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

BOOL sub_10032737C(uint64_t a1, uint64_t a2)
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
  sub_1003276DC();

  return v14;
}

void sub_1003276DC()
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
  sub_1003276DC();
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
  sub_1004BCDD4();
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
  return sub_100327DA0;
}

void sub_100327DA0(id **a1)
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
  return sub_100327E90;
}

double sub_100327ED4(uint64_t a1, uint64_t a2, void *a3)
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

  sub_100003ABC(&qword_10060EC20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C4D40;
  sub_100009130(0, &qword_10060CFF0);
  *(v8 + 32) = sub_1004BCF84(4);
  isa = sub_1004BC284().super.isa;

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

double sub_100328008(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003280A8()
{

  return swift_deallocObject();
}

void sub_1003280FC()
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
    sub_1003283F8(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_1003283F8(v7);
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

  sub_1003280FC();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003283C4;
}

void sub_1003283C4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1003280FC();
  }
}

void sub_1003283F8(void *a1)
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

    sub_100009130(0, &unk_10060D1C0);
    v6 = v5;
    v3 = v3;
    v7 = sub_1004BCFA4();

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
    sub_100009130(0, &qword_100611200);
    v11 = v2;
    v12 = sub_1004BCFA4();

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
  return sub_10032873C;
}

void sub_10032873C(uint64_t a1, char a2)
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

void sub_10032884C()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_1004BBE24();
  [v1 removeAnimationForKey:v4];

  *&v20[0] = v3;
  *(&v20[0] + 1) = v2;

  v21._countAndFlagsBits = 0x676E69646E65;
  v21._object = 0xE600000000000000;
  sub_1004BC024(v21);
  v5 = sub_1004BBE24();

  [v1 removeAnimationForKey:v5];

  [v1 setStrokeEnd:0.6];
  v6 = sub_1004BBE24();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  v8 = [v1 presentationLayer];
  if (!v8)
  {
    v8 = v1;
  }

  v9 = sub_1004BBE24();
  v10 = [v8 valueForKeyPath:v9];

  if (v10)
  {
    sub_1004BD284();
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
    sub_1002BE048(v20);
  }

  isa = sub_1004BC5A4().super.super.isa;
  [v7 setFromValue:isa];

  v12 = sub_1004BC5A4().super.super.isa;
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

  v17 = sub_1004BBE24();
  [v1 addAnimation:v13 forKey:v17];
}

void sub_100328B64(uint64_t a1, uint64_t a2, double a3)
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

    v9 = sub_1004BBE24();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      sub_1004BD284();
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
      sub_1002BE048(v41);
    }

    v12 = sub_1004BBE24();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = sub_1004BC5A4().super.super.isa;
    [v14 setFromValue:isa];

    v16 = sub_1004BC5A4().super.super.isa;
    [v14 setToValue:v16];

    v17 = sub_1004BBE24();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = sub_1004B7194().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_100003ABC(&qword_10060EC20);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004C51A0;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_100009130(0, &unk_10060D1D0);
    v22 = v14;
    v23 = v18;
    v24 = sub_1004BC284().super.isa;

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
    *v31 = sub_1003296C8;
    v31[1] = v30;
    v33 = v29;

    sub_10003CC4C(v32);
    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v36 = sub_1004BBE24();
    [v7 removeAnimationForKey:v36];

    *&v41[0] = v35;
    *(&v41[0] + 1) = v34;

    v42._countAndFlagsBits = 0x676E69646E65;
    v42._object = 0xE600000000000000;
    sub_1004BC024(v42);
    v37 = sub_1004BBE24();

    [v7 addAnimation:v25 forKey:v37];
  }
}

uint64_t sub_100329038()
{

  return swift_deallocObject();
}

void sub_1003290A4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
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
    sub_1004BC024(v18);
    v13 = sub_1004BBE24();

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

id sub_1003292D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100329324()
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
  sub_1004BD624();
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

uint64_t sub_10032960C(uint64_t a1)
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

uint64_t sub_100329628(uint64_t result, int a2)
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

uint64_t sub_100329680()
{

  return swift_deallocObject();
}

uint64_t sub_1003296E8(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1004BD9C4() & 1) == 0)
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

uint64_t sub_100329778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB634();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v64 = sub_100003ABC(&qword_10060CB58);
  __chkstk_darwin(v64);
  v69 = &v53 - v11;
  v71 = type metadata accessor for ArtworkImage.ViewModel(0);
  v12 = *(v71 - 8);
  __chkstk_darwin(v71);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v15 - 8);
  v66 = &v53 - v16;
  v67 = sub_100003ABC(&unk_10060DF20);
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
        sub_10034BD68(v25, v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        v70 = v25;
        sub_10034BD68(v26, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        v29 = *v28 == *v19 && v28[1] == v19[1];
        if (!v29 && (sub_1004BD9C4() & 1) == 0)
        {
LABEL_32:
          sub_10034C2B8(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_10034C2B8(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v30 = v73;
        v31 = *(v72 + 20);
        v32 = *(v67 + 48);
        sub_10000F778(v28 + v31, v73, &qword_10060EF20);
        sub_10000F778(v19 + v31, v30 + v32, &qword_10060EF20);
        v33 = *v65;
        v34 = v30;
        v35 = v71;
        if ((*v65)(v34, 1, v71) == 1)
        {
          break;
        }

        v62 = v23;
        v37 = v73;
        sub_10000F778(v73, v27, &qword_10060EF20);
        if (v33(v37 + v32, 1, v35) == 1)
        {
          sub_10034C2B8(v27, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
LABEL_26:
          v51 = &unk_10060DF20;
          goto LABEL_31;
        }

        v38 = v61;
        sub_10034BDD4(v73 + v32, v61, type metadata accessor for ArtworkImage.ViewModel);
        if ((sub_1004BB6B4() & 1) == 0)
        {
          sub_10034C2B8(v38, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v39 = *(v71 + 20);
        v40 = *(v64 + 48);
        v41 = v69;
        sub_10000F778(v27 + v39, v69, &qword_10060DD10);
        sub_10000F778(v38 + v39, v41 + v40, &qword_10060DD10);
        v42 = *v59;
        v43 = v41;
        v44 = v60;
        if ((*v59)(v43, 1, v60) == 1)
        {
          sub_10034C2B8(v38, type metadata accessor for ArtworkImage.ViewModel);
          v45 = v42(v69 + v40, 1, v44);
          v19 = v58;
          if (v45 != 1)
          {
            goto LABEL_29;
          }

          sub_100007214(v69, &qword_10060DD10);
          v27 = v66;
          sub_10034C2B8(v66, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
          v23 = v62;
          goto LABEL_18;
        }

        v46 = v69;
        v47 = v56;
        sub_10000F778(v69, v56, &qword_10060DD10);
        if (v42(v46 + v40, 1, v44) == 1)
        {
          sub_10034C2B8(v61, type metadata accessor for ArtworkImage.ViewModel);
          (*v55)(v47, v44);
          v19 = v58;
LABEL_29:
          sub_100007214(v69, &qword_10060CB58);
          v27 = v66;
LABEL_30:
          v28 = v68;
          sub_10034C2B8(v27, type metadata accessor for ArtworkImage.ViewModel);
          v51 = &qword_10060EF20;
LABEL_31:
          sub_100007214(v73, v51);
          goto LABEL_32;
        }

        v48 = v54;
        (*v53)(v54, v46 + v40, v44);
        sub_10034A084(&qword_10060CB60, &type metadata accessor for Artwork.CropStyle);
        v57 = sub_1004BBD84();
        v49 = *v55;
        (*v55)(v48, v44);
        sub_10034C2B8(v61, type metadata accessor for ArtworkImage.ViewModel);
        v49(v47, v44);
        sub_100007214(v46, &qword_10060DD10);
        v27 = v66;
        sub_10034C2B8(v66, type metadata accessor for ArtworkImage.ViewModel);
        sub_100007214(v73, &qword_10060EF20);
        v19 = v58;
        v28 = v68;
        v23 = v62;
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v50 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v28 + *(v72 + 24), v19 + *(v72 + 24));
        sub_10034C2B8(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_10034C2B8(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
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
      sub_100007214(v73, &qword_10060EF20);
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

uint64_t sub_10032A08C(uint64_t result, uint64_t a2)
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
  v48 = sub_1004BB6C4();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v6 - 8);
  v46 = &v36 - v7;
  v45 = sub_100003ABC(&qword_10060E048);
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
      sub_10034BD68(v16, v20, type metadata accessor for PlaylistCurators.Curator);
      v21 = v49;
      sub_10034BD68(v17, v49, type metadata accessor for PlaylistCurators.Curator);
      v22 = *v20 == *v21 && v20[1] == v21[1];
      if (!v22 && (sub_1004BD9C4() & 1) == 0)
      {
        break;
      }

      v23 = v20;
      v24 = v18;
      v25 = *(v44 + 20);
      v26 = *(v45 + 48);
      sub_10000F778(v23 + v25, v9, &unk_10060EBE0);
      sub_10000F778(v49 + v25, &v9[v26], &unk_10060EBE0);
      v27 = *v24;
      if ((*v24)(v9, 1, v48) == 1)
      {
        if (v27(&v9[v26], 1, v48) != 1)
        {
          goto LABEL_19;
        }

        v18 = v24;
        sub_100007214(v9, &unk_10060EBE0);
        sub_10034C2B8(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        sub_10034C2B8(v47, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v42 = v16;
        v28 = v9;
        sub_10000F778(v9, v19, &unk_10060EBE0);
        if (v27(&v9[v26], 1, v48) == 1)
        {
          (*v39)(v19, v48);
LABEL_19:
          sub_100007214(v9, &qword_10060E048);
          v20 = v47;
          break;
        }

        v29 = &v9[v26];
        v30 = v40;
        v31 = v48;
        (*v37)(v40, v29, v48);
        sub_10034A084(&qword_10060E050, &type metadata accessor for Artwork);
        v41 = sub_1004BBD84();
        v32 = *v39;
        v33 = v30;
        v34 = v46;
        (*v39)(v33, v31);
        v19 = v34;
        v32(v34, v31);
        sub_100007214(v28, &unk_10060EBE0);
        sub_10034C2B8(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        v18 = v38;
        sub_10034C2B8(v47, type metadata accessor for PlaylistCurators.Curator);
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

    sub_10034C2B8(v49, type metadata accessor for PlaylistCurators.Curator);
    sub_10034C2B8(v20, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}